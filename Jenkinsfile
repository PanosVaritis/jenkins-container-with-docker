pipeline {
    agent any

    environment {
        GITHUB_URL = "ghcr.io"
        GITHUB_USERNAME = "panosvaritis"
        GITHUB_TOKEN = credentials("secondary-token")
        IMAGE_PREFIX = "${GITHUB_URL}/${GITHUB_USERNAME}"
    }

    stages {
        stage ("Hello stage"){
            steps {
                echo "Welcome to jenkins server"
                // echo '${IMAGE_PREFIX}' //Will print ${IMAGE_PREFIX} and not the value of the variable
                // echo 'The image prefix is ${IMAGE_PREFIX}' //The same!! Will not parse the variable value
                // echo "The image prefix is ${IMAGE_PREFIX}"
                // sh "mkdir panosdirectory"
                // sh 'echo \'Hello from jenkins. The image prefix is: ${IMAGE_PREFIX}\'' //Similar this wont analyse the variable name in the string
                // sh 'echo Hello from jenkins. The image prefix is ${IMAGE_PREFIX} && echo "My name is panos"'
                // sh 'echo "Welcome again"'
            }
        }
        stage ("Checkout code from repo"){
            steps { 
                script {
                    def result = sh (script :'find ${WORKSPACE} -type d -name "CrowdFunding-Application"', returnStdout: true)
               
                    if (result){
                        echo "The directory is ${result}!! Pulling latest code"
                        sh """
                            cd ${result}
                            git pull origin jenkins
                            pwd
                        """
                    }else {
                        echo "Directory not found!!! Cloning code"
                        sh 'git clone -b jenkins git@github.com:PanosVaritis/CrowdFunding-Application.git'
                    }
                }


            }
        }

        stage ("Build stage"){
            steps {
                sh"""
                    pwd
                """

            }
        }
    }
}   

