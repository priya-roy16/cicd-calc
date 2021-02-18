pipeline {
    agent any
    stages {
        stage('Submit Stack') {
            steps {
            bat "aws cloudformation create-stack --stack-name priyalambdafunction --template-body file://lambdafunctioncft.json --region us-east-1" 
            }
         }
     }
}
