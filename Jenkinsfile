
pipeline {
     agent none
     
     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
  

stages {
    stage('init') {
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
    }             
           
    stage('apply') {
        when {
            branch 'first'
        }
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

