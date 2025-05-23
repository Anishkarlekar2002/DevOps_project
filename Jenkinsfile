pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Anishkarlekar2002/DevOps_project.git'
            }
        }

        stage('Cleanup Old Container') {
            steps {
                sh '''
                docker stop todo-container || true
                docker rm todo-container || true
                '''
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t todo-app ./public'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:80 --name todo-container todo-app'
            }
        }
    }

    post {
        failure {
            echo 'Pipeline failed!'
        }
        success {
            echo 'Deployment successful!'
        }
    }
}
