node {
  stage('Checkout') {
    catchError(stageResult: 'FAILURE') {
        checkout scm
        }
  }
  stage('Preparing Test') {
    catchError(stageResult: 'FAILURE') {
        sh 'bundle install'
        }
  }
  stage('Run Test'){     
       sh 'cucumber'
  }
}