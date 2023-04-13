pipeline{
    agent any

    environment{
        DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    }

    tools{
        maven 'maven_3.2.5'
    }

    stages{
        stage('Build Maven'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/HuongNV83/github_cicd_jenkin_docker']])
                bat 'mvn clean install'
            }
        }

        stage('Build Docker image'){
            steps{
                script{
                    bat 'docker build -t huongnv83/github_cicd_jenkins_docker .'
                }
            }
        }

        stage('Push image to DockerHub'){
            steps{
                script{
                    bat 'docker login -u huongnv83 -p dckr_pat_Boentz0gE_QtBWPL4IdVhcM73Q0'
                    bat 'docker push huongnv83/github_cicd_jenkins_docker'
                }
            }
        }
    }

    /*post{
        always{
            bat 'docker logout'
        }
    }*/
}