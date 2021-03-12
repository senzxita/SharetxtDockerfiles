pipeline {

    agent any

    stages {
        stage('build') {
            steps("run frontend") {
               echo 'building the application....'
               echo 'executing npm'
               nodejs('Nodejs 15.11.0') {
                   sh 'npm install'
               }

            }
        }

    stage('test') {
            steps {
               echo 'testing the application...'
            }
        }

    stage('deploy') {
            steps {
               echo 'deploying the application'
            }
        }
    }
}
