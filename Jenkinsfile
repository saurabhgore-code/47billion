pipeline {
    agent any 
    environment {
		DOCKERHUB_CREDENTIALS=credentials('deploy')
	}
    stages
    { 
        stage('pull image')
        {
        steps{ 
            sh 'docker pull mysql'
        }
        }
        stage('run mysql image')
        {
        steps{
            sh 'docker run -dt --name mysql-container -e MYSQL_ROOT_PASSWORD="Sau1989/" mysql'
        }
        }
stage('login dockerhub'){
    steps{ 
      sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
         }
  }
       stage('Deploy Image') {
          steps{
              sh 'docker tag mysql saurabhgore70/mysql:v2'
              sh 'docker push saurabhgore70/mysql:v2'
       }
           }

  }
}
