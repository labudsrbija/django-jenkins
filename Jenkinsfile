pipeline{
    agent any
    stages {
        stage('setup python virtual ENV'){
            steps {
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
                }
        }
        stage('setup Gunicorn'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('setup nginx'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}
