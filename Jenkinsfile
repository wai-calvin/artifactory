pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t artifactory/artifactory:0.0.5 .'
            }
        }
    }
}