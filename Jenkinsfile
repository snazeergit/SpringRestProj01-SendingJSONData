pipeline{
    agent any
    tools{
        maven 'Maven386'
    }
    stages{
        stage('Build Maven Project'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/snazeergit/DevOpsIntegration']]])
                shell 'mvn clean install'
            }
        }
        stage("Build Docker Image"){
            steps{
                script{
                    shell 'docker build -t nazeerdocker/DevOps-Automation-1 .'
                }
            }
        }
        stage("Push Docker Image to DockerHub"){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                        shell 'docker login -u nazeerdocker -p${dockerhubpwd}'
                    }
                    shell 'docker push nazeerdocker/DevOps-Automation-1'
                }
            }
        }
    }
} 