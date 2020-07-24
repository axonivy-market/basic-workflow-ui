pipeline {
  agent {
    docker {
      image 'axonivy/build-container:web-1.0'
    }
  }

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
          def phase = env.BRANCH_NAME == 'master' ? 'deploy' : 'verify'
          maven cmd: "clean ${phase} -Dmaven.test.failure.ignore=true -Divy.engine.list.url=${params.engineListUrl}"
        }

        archiveArtifacts '**/target/*.iar'
        archiveArtifacts artifacts: '**/target/selenide/reports/**/*', allowEmptyArchive: true

        junit testDataPublishers: [[$class: 'StabilityTestDataPublisher']], testResults: '**/target/surefire-reports/**/*.xml'          

        recordIssues tools: [eclipse()], unstableTotalAll: 1
        recordIssues tools: [mavenConsole()], unstableTotalAll: 1
      }
    }
  }
}
