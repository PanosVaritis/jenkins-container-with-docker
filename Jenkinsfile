pipeline {
    agent any

    environment {
        GITHUB_URL = "ghcr.io"
        GITHUB_USERNAME = "panosvaritis"
        GITHUB_TOKEN = credentials("secondary-token")
        IMAGE_PREFIX = '${GITHUB_URL}/${GITHUB_USERNAME}'
    }

    stages {
        stage ("Hello stage"){
            steps {
                echo "Welcome to jenkins server"
                // echo '${IMAGE_PREFIX}' //Will print ${IMAGE_PREFIX} and not the value of the variable
                // echo 'The image prefix is ${IMAGE_PREFIX}' //The same!! Will not parse the variable value
                echo "The image prefix is ${IMAGE_PREFIX}"

            }
            
        }
    }
}   