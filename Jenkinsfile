pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/deepgowda123/jenkins-webhook-demo.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building project...'
                bat 'echo Build step completed!'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Run your Python script using Windows command
                bat 'python app.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                bat 'echo Deployment step done!'
            }
        }
    }
}

