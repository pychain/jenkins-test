pipeline {
    agent {
        docker {
           image 'hashicorp/terraform:light'
           args '--entrypoint='
        }
    }
     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
  

     stages {
         stage('init') {
           steps {
                 sh 'terraform init' 
                 sh 'terraform plan -no-color -out=create.tfplan' 
             }
         }             

         stage('apply') {
             when {
                 branch 'main'
             }
             steps {
                 sh 'terraform init' 
                 sh 'terraform plan -no-color -out=tfplan' 
                 sh 'terraform apply -input=false tfplan'
             }  
         }

     }
     }

