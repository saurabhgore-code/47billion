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
 }
}
