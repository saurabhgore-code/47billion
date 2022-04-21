pipeline {
    agent label slave-node
    environment {
		DOCKERHUB_CREDENTIALS=credentials('deploy')
	}
    stages
	{ 
        stage('pull image')
        {
        steps{ 
            sh 'docker pull nginx'
        }
        }
        stage('run nginx image')
        {
        steps{
            sh 'docker run -dt nginx'
        }
        }
stage('login dockerhub'){
    steps{ 
      sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
         }
  }
       stage('Deploy Image') {
          steps{
              sh 'docker tag nginx saurabhgore70/nginx:bpl'
              sh 'docker push saurabhgore70/nginx:bpl'
       }
           }

  }
}
