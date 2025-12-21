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
                echo '${IMAGE_PREFIX}'

            }
            
        }
    }
}   