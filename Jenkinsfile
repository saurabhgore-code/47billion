pipeline {
    agent any 
    environment {
		DOCKERHUB_CREDENTIALS=credentials('deploy')
	}
    stages
	{ stage ('cloning git')
	 { steps{ 'sh git clone https://github.com/saurabhgore-code/47billion.git'
		}
	 }
        stage('build image')
        {
        steps{ 
            sh 'docker build -t mysql-image /home/ec2-user/all-dockerfiles'
        }
        }
        stage('run mysql image')
        {
        steps{
            sh 'docker run -dt mysql-image'
        }
        }
stage('login dockerhub'){
    steps{ 
      sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
         }
  }
       stage('Deploy Image') {
          steps{
              sh 'docker tag mysql-image saurabhgore70/mysql-image:v2'
              sh 'docker push saurabhgore70/mysql-image:v2'
       }
           }

  }
}
