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
                    dockerImage = docker.build("vardhansneha/vardhan-project:${env.BUILD_NUMBER}")
                    docker.withRegistry('https://index.docker.io/v1/', 'vardhansneha') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Provision') {
            steps {
                withCredentials([string(credentialsId: 'aws-access-key-id', variable: 'AWS_ACCESS_KEY_ID'),
                                 string(credentialsId: 'aws-secret-access-key', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                    script {
                        sh '''
                        cd terraform
                        terraform init
                        terraform apply -auto-approve
                        '''
                        env.INSTANCE_PUBLIC_IP = sh(script: 'cd terraform && terraform output -raw instance_public_ip', returnStdout: true).trim()
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sshagent(credentials: ['TWN.pub']) {
                    sh '''
                    mkdir -p /var/lib/jenkins/.ssh
                    ssh-keyscan -H ${INSTANCE_PUBLIC_IP} >> /var/lib/jenkins/.ssh/known_hosts
                    scp docker-compose.yml ec2-user@${INSTANCE_PUBLIC_IP}:/
                    '''
                }
            }
        }
    }
}
