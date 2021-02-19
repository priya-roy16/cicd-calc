pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'docker pull python'
                bat  'docker build -t cicd-calc . '
                bat  'docker run --rm --name my-running-app cicd-calc'
            }
        }
        stage('Submit Stack') {
            steps {
            bat "aws cloudformation create-stack --stack-name priyalambdafunction --template-body file://lambdafunctioncft.json --capabilities CAPABILITY_NAMED_IAM --region us-east-1" 
            }
         }
     }
}
