pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/deepgowda123/jenkins-webhook-demo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t flask-demo .'
            }
        }
        stage('Run Docker Container') {
            steps {
                echo 'Running Flask container...'
                // Stop and remove old container if it exists, then run new one
                bat '''
                docker stop flask-demo-app || echo "No container to stop"
                docker rm flask-demo-app || echo "No container to remove"
                docker run -d -p 5000:5000 --name flask-demo-app flask-demo
                '''
            }
        }
    }
}
