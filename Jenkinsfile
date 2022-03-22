pipeline {
    agent any 
    environment {
		DOCKERHUB_CREDENTIALS=credentials('deploy')
	}
    stages
	{ stage ('cloning git')
	 { steps{ 
		 'sh git clone https://github.com/saurabhgore-code/47billion.git'
		}
	 }
        stage('build image')
        {
        steps{ 
            sh 'docker build -t my-apache-image /home/sagore'
        }
        }
        stage('run apache image')
        {
        steps{
            sh 'docker run -dt my-apache-image'
        }
        }
stage('login dockerhub'){
    steps{ 
      sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
         }
  }
       stage('Deploy Image') {
          steps{
              sh 'docker tag my-apache-image saurabhgore70/my-apache-image:bpl'
              sh 'docker push saurabhgore70/my-apache-image:bpl'
       }
           }

  }
}
