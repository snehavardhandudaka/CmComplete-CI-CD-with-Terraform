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
        stage('Docker Setup') {
            steps {
                script {
                    // Create and use a Docker Buildx builder
                    sh 'docker buildx create --name mybuilder --use || true'
                    sh 'docker buildx inspect --bootstrap'
                }
            }
        }
        stage('Docker Build & Push') {
            steps {
                script {
                    // Build and push Docker image with Buildx
                    sh 'docker buildx build -t vardhansneha/vardhan-project:${env.BUILD_NUMBER} --push .'
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
