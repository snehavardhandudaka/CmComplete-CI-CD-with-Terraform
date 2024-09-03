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
                    // Check if the Docker Buildx builder already exists
                    def builderExists = sh(script: 'docker buildx ls | grep mybuilder || true', returnStatus: true) == 0
                    if (!builderExists) {
                        sh 'docker buildx create --name mybuilder --use'
                    } else {
                        sh 'docker buildx use mybuilder'
                    }
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
