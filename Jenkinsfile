node {
  stage('Test Preparation') {
    catchError(stageResult: 'FAILURE') {
        checkout scm
        }
  }
  stage('Run Test'){
        cucumber
  }
