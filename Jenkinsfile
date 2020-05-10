pipeline {
  environment {
    registry = 'ikhono/cloud-developer-nanodegree'
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }

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

    stage("Build image") {
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    stage('Push image') {
      steps {
        script {
          docker.withRegistry('', registryCredential) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Clean-up local images') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
        sh "docker rmi nginx:alpine"
      }
    }
  }
}