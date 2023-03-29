pipeline {
    agent any
    tools {
        maven 'MAVEN'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Hello World'
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/dnisha/k8s-cicd-deployment']])
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('Docker Build & Push') {
             steps {
                 script{
                     withDockerRegistry(credentialsId: 'docker-credential') {
                                sh 'docker build -t dash04/java-app:v1 .'
                                sh 'docker push dash04/java-app:v1'
                     }
                 }
             }
        }
    }
}