pipeline {
    agent any

    environment {
        GITHUB_URL = "ghcr.io"
        GITHUB_USERNAME = "panosvaritis"
        GITHUB_TOKEN = credentials("secondary-token")
    }

    stages {
        stage ("Hello stage"){
            steps {
                echo "Welcome to jenkins server"
            }
        }
    }
}