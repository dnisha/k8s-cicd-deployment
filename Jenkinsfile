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
                        try{
                            sh 'docker rmi dash04/java-app:v1'
                            sh 'docker build -t dash04/java-app:v1 .'
                        }
                        catch(error){
                            sh 'docker build -t dash04/java-app:v1 .'
                        }
                            sh 'docker push dash04/java-app:v1'
                            sshagent(['my-k8s-server']) {
                            
                            sh 'scp -o StrictHostKeyChecking=no services.yml pods.yml ubuntu@ip-172-31-45-174:/home/ubuntu/'

                            script{
                                try{
                                    sh 'ssh ubuntu@ip-172-31-45-174 kubectl apply -f .'
                                }
                                catch(error){
                                     sh 'ssh ubuntu@ip-172-31-45-174 kubectl create -f .'
                                }
                            }
                            }
                     }
                 }
             }
        }
    }
}