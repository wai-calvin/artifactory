node {
    stage('Close Repository') {
        checkout scm
    }

    stage('Build Image') {
        docker.build("jenkins/jenkins:1.0.0")
    }
    
    stage('Check local images') P{
        sh 'docker image ls'
    }
}