pipeline {
  environment {
    registry = 'ikhono/cloud-developer-nanodegree'
    registryCredentials = 'dockerhub_id'
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
          dockerImage = docker.build registry + ":tested"
        }
      }
    }

    stage('Push Docker image') {
      steps {
        script {
          docker.withRegistry('', registryCredentials) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Clean-up Docker local images') {
      steps {
        sh "docker rmi $registry:tested"
        sh "docker rmi nginx:alpine"
      }
    }

    stage('Deploy to EKS') {
      steps {
        withAWS(region: 'us-west-2', credentials: 'aws_devops') {
          sh """
            aws eks --region us-west-2 update-kubeconfig --name cicd-capstone-EksCluster
            kubectl config use-context arn:aws:eks:us-west-2:853001741663:cluster/cicd-capstone-EksCluster
            kubectl apply -f k8s/deployment.yml
            kubectl get svc
          """
        }
      }
    }
  }
}