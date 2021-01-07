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
       defaultValue: 'https://jenkins.ivyteam.io/job/ivy-core_product/job/master/lastSuccessfulBuild/'
    )
  }

  stages {
    stage('build') {
      steps {
        script {
          // build can not run in parallel on same node, because they need the network of the host, why?
          // because the maven container talks to the selenium container and the selenium container
          // want to talk to the axon.ivy which is running in the maven container
          // here we need to find a way that they can act in the same docker network and the axon ivy engine needs a stable url (port)
          // we may need to pass selenide.baseUrl as system property (which will point to the axon.ivy engine)          
          docker.image("selenium/standalone-firefox:3.141.59").withRun('--network host -e START_XVFB=false --shm-size=2g') { container ->
            docker.build('maven').inside("--network host") {
              def phase = env.BRANCH_NAME == 'master' ? 'deploy' : 'verify'
              maven cmd: "clean ${phase} -Dmaven.test.failure.ignore=true -Divy.engine.list.url=${params.engineListUrl} -Dselenide.remote=http://localhost:4444/wd/hub"
            }
          }
        }

        archiveArtifacts '**/target/*.iar'
        archiveArtifacts artifacts: '**/target/selenide/reports/**/*', allowEmptyArchive: true

        junit testDataPublishers: [[$class: 'StabilityTestDataPublisher']], testResults: '**/target/*-reports/**/*.xml'          

        recordIssues tools: [eclipse()], unstableTotalAll: 1
        recordIssues tools: [mavenConsole()], unstableTotalAll: 1
      }
    }
  }
}
