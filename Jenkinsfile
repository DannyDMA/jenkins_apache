pipeline {
    agent any
    environment {
        DOCKERHUB_REPO = 'liquid002/jenkinsapache'
        DOCKERHUB_CREDS = credentials('DockerHubCreds_id')
    }

    stages {
        stage('Source') {
            steps {
                echo 'Loggin into github account'
                git branch: 'master', credentialsId: 'Github-id', url: 'https://github.com/DannyDMA/jenkins_apache.git'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Build image'
                sh 'whoami'
                sh 'docker build -t ${DOCKERHUB_REPO}:v${BUILD_NUMBER} .'
                sh 'docker image'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploy image to dockerhub'
                sh 'docker login -u ${DOCKERHUB_CREDS_USR} -p ${DOCKERHUB_CREDS_PSW}'
                sh 'docker push ${DOCKERHUB_REPO}:v${BUILD_NUMBER}'
            }
        }
    }
}
