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
    }
}