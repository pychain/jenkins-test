
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
    stage('infrastructure_developement') {



        steps {
            sh 'terraform init' 
            sh 'terraform plan -no-color -out=create.tfplan' 
        }
                 
           
    stage('infrastructure_production') {

        steps {
            sh 'terraform init' 
            sh 'terraform plan -no-color -out=tfplan' 
            sh 'terraform apply -input=false tfplan'
        }  
    }
  }
}
}

