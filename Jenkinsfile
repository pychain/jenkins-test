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
                 sh 'hello world'
             }
         }             

         stage('apply') {
             when {
                 branch 'main'
             }
             steps { 
                 sh 'hello main'
             }  
         }

     }
 }

