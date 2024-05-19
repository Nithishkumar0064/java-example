#!groovy
pipeline {
    environment {
  registry = 'nithishnithi/tomcat'
  registryCredentials = 'Docker_credential'
 }
    agent {label'docker'}
    stages{
        stage('git-checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Nithishkumar0064/java-example.git'
            }
        }
        stage('Build docker image'){
            steps {
                script {
                    image = docker.build("${registry}:$BUILD_NUMBER")
                }
            }
        }
        stage('Push image to Hub'){
            steps {
                sh 'echo Registry-push'
                script {
                    docker.withRegistry('', registryCredentials) {
                        image.push()
                        image.push('latest')
                    }
                }
            }
        }
        stage('Deploy ') {
            steps {
                sh 'docker run -itd  -p 8090:8080 ${registry} :${BUILD_ID}
            }
            
        }
        
      }
    }
