pipeline {
    agent any
    tools {       
        jdk 'My_OpenJDK8'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url : 'https://github.com/kaushalsingh21/Devops-RiskNarrative.git'
            }
        }
        stage('compile') {
            steps {
                echo 'the code is being compiled'
                sh "mvn compile" 
            }
        }
        stage('test') {
            steps {
                echo 'performing unit test'
                sh "mvn test"
            }
        }
        stage('package') {
            steps {
                echo 'packaging the code'
                sh "mvn package"
                sh "docker build -t devops-exer:v4 ."

            }
        }
        stage('deploy'){
            steps {
                sh "docker run -d --name RiskNarrative4 -p 8081:8080 devops-exer:v4"
            }
        }
        
    }

}