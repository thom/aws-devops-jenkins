pipeline {
  agent any

  stages {
    stage('Linting') {
      steps {
        echo 'Linting Dockerfile'
        sh 'hadolint Dockerfile'
        
        echo 'Linting HTML Code'
        sh 'tidy -q -e --drop-empty-elements no app/*.html'
      }
    }
  }
}