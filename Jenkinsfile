pipeline {
  environment {
    registry = 'ikhono/cloud-developer-nanodegree'
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }

  agent any

  stages {
    stage('Lint source code') {
      steps {
        echo 'Linting Dockerfile'
        sh 'hadolint Dockerfile'
        
        echo 'Linting HTML Code'
        sh 'tidy -q -e --drop-empty-elements no app/*.html'
      }
    }

    stage("Build Docker image") {
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    stage('Push Docker image') {
      steps {
        script {
          docker.withRegistry('', registryCredential) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Clean-up Docker local images') {
      steps {
        sh "docker rmi $registry:$BUILD_NUMBER"
        sh "docker rmi nginx:alpine"
      }
    }
  }
}