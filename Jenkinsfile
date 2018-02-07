pipeline {
    agent any
  
    triggers {
        pollSCM('* * * * *')
    }
    
    stages {
        stage('repo clean up'){
            steps {
                step([$class: 'WsCleanup'])
            }
        }

        stage('Checkout') {
            steps {
                git poll: true, url: 'https://github.com/pulin2004/dmall-inventory-service-base.git', branch: 'master'
            }
                
        }

        stage('Build') {
            steps{
                sh 'echo "clean..."'
                ./gradlew build
                sh 'echo "building..."'
                ls -l build/libs
                sh 'echo "docker ..."'
            }
        }
    }
}
