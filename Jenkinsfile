pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-creds')
        AWS_SECRET_ACCESS_KEY = credentials('aws-creds')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/your-org/terraform-repo.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'cd terraform && terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'cd terraform && terraform plan -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'cd terraform && terraform apply -auto-approve tfplan'
            }
        }
    }
    post {
        success {
            echo "Terraform apply completed successfully!"
        }
        failure {
            echo "Pipeline failed. Check logs."
        }
    }
}
