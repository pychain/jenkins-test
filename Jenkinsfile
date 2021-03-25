pipeline {
    agent {
        docker {
           image 'hashicorp/terraform:light'
           args '--entrypoint='
        }
    }
  

     stages {
         stage('init') {
           steps {
                 sh 'echo hello fork'
             }
         }             

         stage('apply') {
             when {
                 branch 'main'
             }
             steps { 
                 sh 'echo hello main fork'
             }  
         }

     }
 }

