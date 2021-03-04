
pipeline {

     environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
  
agent {
  docker {
      image 'hashicorp/terraform:light'
      args '--entrypoint='
  }
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
            branch 'first'
        }
        steps {
            sh 'terraform init' 
            sh 'terraform plan -no-color -out=tfplan' 
            sh 'terraform apply -input=false tfplan'
        }  
    }
  
}
}

