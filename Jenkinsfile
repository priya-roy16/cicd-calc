pipeline {
    agent any
    stages {
        stage('Run calc'){
            steps{
                bat "SET IMAGE_NAME="test-image""
                bat "SET CONTAINER_NAME="test-container""
                bat "echo "Check current working directory""
                bat "echo "Build docker image and run container""
                bat "docker build -t %IMAGE_NAME% %CD%"
                bat "docker run -d --name %CONTAINER_NAME% %IMAGE_NAME%"
                bat "echo "Copy result.xml into Jenkins container""
                bat "DEL /S reports"
                bat "mkdir reports"
                bat "docker cp %CONTAINER_NAME%:\cicd-calc\reports\result.xml reports\"
                bat "echo Cleanup"
                bat "docker stop %CONTAINER_NAME%"
                bat "docker rm %CONTAINER_NAME%"
                bat "docker rmi %IMAGE_NAME%"
            }
        }
        stage('Submit Stack') {
            steps {
            bat "aws cloudformation create-stack --stack-name priyalambdafunction --template-body file://lambdafunctioncft.json --capabilities CAPABILITY_NAMED_IAM --region us-east-1" 
            }
         }
     }
}
