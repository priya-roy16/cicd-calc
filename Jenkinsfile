pipeline {
    agent any
    stages {
        stage('Submit Stack') {
            steps {
            bat 'echo %AWS_ACCESS_KEY_ID%'
            bat 'echo %AWS_SECRET_ACCESS_KEY%'
            bat "aws cloudformation create-stack --stack-name priyas3bucket --template-body file://simplests3cft.json --region us-east-1" 
            }
         }
     }
}
