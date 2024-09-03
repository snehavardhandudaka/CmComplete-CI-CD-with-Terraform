pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-east-2'
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build & Push') {
            steps {
                script {
                    // Setup Docker Buildx
                    sh 'docker buildx create --name mybuilder --use'
                    sh 'docker buildx inspect --bootstrap'
                    
                    // Build and push Docker image with Buildx
                    dockerImage = docker.build("vardhansneha/vardhan-project:${env.BUILD_NUMBER}", "--builder mybuilder")
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Provision') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-credentials-id']]) {
                    sh '''
                    cd terraform
                    terraform init
                    terraform apply -auto-approve
                    '''
                }
            }
        }
        stage('Deploy') {
            steps {
                sshagent(credentials: ['TWN.pub']) {
                    sh '''
                    scp docker-compose.yml ec2-user@$(terraform output -raw instance_public_ip):/
                    '''
                }
            }
        }
    }
}
