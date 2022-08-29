pipeline {
	agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('deploy')
	}
    stages
	{	
	stage('clone the repo')
		{
			steps{	
	 sh 'git clone https://github.com/saurabhgore-code/47billion.git'
			}
		}
        stage('build  mysql image')
        {
        steps{ 
            sh 'docker build -t mysql-image .'
        }
        }
        stage('run mysql image')
        {
        steps{
            sh 'docker run -dt mysql'
        }
        }
	stage('login dockerhub'){
    steps{ 
      sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
         }
  }
       stage('Deploy Image') {
          steps{
              sh 'docker tag mysql saurabhgore70/mysql:delhi'
              sh 'docker push saurabhgore70/mysql:delhi'
       }
           }
	
 }
}
