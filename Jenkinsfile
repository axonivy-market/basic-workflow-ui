pipeline {
  agent any

  triggers {
    pollSCM '@hourly'
    cron '@midnight'
  }

  options {
    buildDiscarder(logRotator(numToKeepStr: '30', artifactNumToKeepStr: '2'))
  }

  parameters {
    string(
       name: 'engineListUrl',
       description: 'Engine to use for build',
       defaultValue: 'https://jenkins.ivyteam.io/job/ivy-core_product/job/release%252F8.0/lastSuccessfulBuild/'
    )
  }

  stages {
    stage('build') {
      steps {
        script {
          def random = (new Random()).nextInt(10000000)
          def networkName = "build-" + random
          def seleniumName = "selenium-" + random
          def ivyName = "ivy-" + random
          sh "docker network create ${networkName}"
          try {
            docker.image("selenium/standalone-firefox:3").withRun("-e START_XVFB=false --shm-size=2g --name ${seleniumName} --network ${networkName}") {
              docker.build('maven').inside("--name ${ivyName} --network ${networkName}") {
                def phase = env.BRANCH_NAME == 'release/8.0' ? 'deploy' : 'verify'
                maven cmd: "clean ${phase} -Dmaven.test.failure.ignore=true -Divy.engine.list.url=${params.engineListUrl} -Dtest.engine.url=http://${ivyName}:8080/ivy -Dselenide.remote=http://${seleniumName}:4444/wd/hub"
              }
            }
          } finally {
            sh "docker network rm ${networkName}"
          }
        }

        archiveArtifacts '**/target/*.iar,**/target/*.zip'
        archiveArtifacts artifacts: '**/target/selenide/reports/**/*', allowEmptyArchive: true
        recordIssues tools: [eclipse()], unstableTotalAll: 1
        junit testDataPublishers: [[$class: 'StabilityTestDataPublisher']], testResults: '**/target/surefire-reports/**/*.xml'     
      }
    }
  }
}

        