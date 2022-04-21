pipeline {
	agent {label 'slave-node'}
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
        stage('run nginx image')
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
              sh 'docker tag mysql saurabhgore70/mysql:indr'
              sh 'docker push saurabhgore70/mysql:indr'
       }
           }

  }
}
