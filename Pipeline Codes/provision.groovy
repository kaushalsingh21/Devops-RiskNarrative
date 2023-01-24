pipeline {
    agent any

    stages {
        stage("Checkout") {
            steps {
                git url: "https://github.com/kaushalsingh21/Devops-RiskNarrative.git"
            }
        }
        stage("Terraform Init") {
            steps {
                echo 'initialising terraform'
                sh "terraform init"
            }
        }
        stage("Terraform Plan") {
            steps {
                echo 'valdating the plan'
                sh "terraform plan"
            }
        }
        stage("Terraform Apply") {
            steps {
                echo 'provisioning resources'
                sh "terraform apply -auto-approve"
            }
        }
    }
}
