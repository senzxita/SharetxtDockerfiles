def gv

pipeline {

    agent any

    stages{
        stage("init") {
            steps{
                script {
                    gv = load "script.groovy"
                }
            }
        }

        stage('build') {
            steps("run frontend") {
               echo 'building the application....'
               echo 'executing npm'
               nodejs('Node-15.11') {
                   sh 'npm install'
               }

            }
        }

        stage('test') {
            steps {
               script {
                   gv.testapp()
               }
            }
        }

        stage('deploy') {
            steps {
               echo 'deploying the application'
               }
            }
        }
    }
}
