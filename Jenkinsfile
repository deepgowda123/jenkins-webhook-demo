pipeline {
    agent any

    options {
        skipDefaultCheckout()   // disable default checkout so we control it
    }

    stages {
        stage('Checkout') {
            steps {
                // Always checkout from GitHub
                checkout scm
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
                bat '"C:/Users/HP/AppData/Local/Programs/Python/Python312/python.exe" app.py'
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

