pipeline {
  triggers {
    pollSCM 'H/5 * * * *'
  }
  agent {
    dockerfile true
  }
  
  options {
    buildDiscarder(logRotator(numToKeepStr: '60', artifactNumToKeepStr: '2'))
  }

  stages {
    stage('build') {
      steps {
        script {
          def workspace = pwd()
          maven cmd: "-P repo.axonivy.com clean install -e -Dmaven.test.failure.ignore=true  " + 
                     "-Dengine.directory=$workspace/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine " +
                     "-Divy.engine.list.url=http://zugprojenkins/job/ivy-core_product/job/feature%252FXIVY-3135_Upgrade_PF7/lastSuccessfulBuild/ "
        }
      }
      post {
        always {
          archiveArtifacts '**/target/*.iar,**/target/*.zip'
          junit '**/target/surefire-reports/**/*.xml'
        }
      }
    }
  }
}
