pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = 'us-east-1'
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
                    dockerImage = docker.build("vardhansneha/vardhan-project:${env.BUILD_NUMBER}")
                    docker.withRegistry('https://index.docker.io/v1/', 'vardhansneha') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Provision') {
            steps {
                sh '''
                cd terraform
                terraform init
                terraform apply -auto-approve
                '''
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
