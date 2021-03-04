
pipeline {

     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
  

stages {
    stage('infrastructure_developement') {


        agent {
            docker {
                image 'hashicorp/terraform:light'
                args '--entrypoint='
            }
        }
        steps {
            sh 'terraform init' 
            sh 'terraform plan -no-color -out=create.tfplan' 
        }
                 
           
    stage('infrastructure_production') {



        agent {
            docker {
                image 'hashicorp/terraform:light'
                args '--entrypoint='
            }
        }
        steps {
            sh 'terraform init' 
            sh 'terraform plan -no-color -out=tfplan' 
            sh 'terraform apply -input=false tfplan'
        }  
    }
  }
}
