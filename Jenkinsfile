pipeline {
    agent any
    stages {
        stage('Submit Stack') {
            steps {
            bat "aws cloudformation create-stack --stack-name priyas3bucket --template-body file://simplests3cft.json --region 'us-east-1'"
            }
         }
     }
}
