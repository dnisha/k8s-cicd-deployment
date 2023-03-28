pipeline {
    agent any
    tools {
        maven 'MAVEN'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Hello World'
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/dnisha/todoApp-Backend.git']])
                sh 'mvn clean install -DskipTests'
            }
        }
    }
}