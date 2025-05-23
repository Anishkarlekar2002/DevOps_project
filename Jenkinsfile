pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Anishkarlekar2002/DevOps_project.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t todo-app .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:80 --name todo-container todo-app'
            }
        }
    }
}
