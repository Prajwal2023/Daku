pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Checkout your repository containing the Dockerfile and index.html
                git branch: 'main', url: 'https://github.com/Prajwal2023/Daku.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile in the repository
               sh 'docker build . -t image'
                }
            }
        stage('Run Container') {
            steps {
                // Run the Docker container based on the built image
               sh 'docker run -d -p 8082:80 image'
            }
        }
    }
        post {
          always {
                emailext (
                    subject: "Pipeline Status: ${BUILD_NUMBER}",
                    body: '''<html>
                                <body>
                                    <p>Build Status: ${BUILD_STATUS}</p>
                                    <p>Build Number: ${BUILD_NUMBER}</p>
                                    <p>Check the <a href="${BUILD_URL}">console output</a>.</p>
                                </body>
                            </html>''',
                    to: 'prajwalpatil0402@gmail.com',
                    from: 'jenkins@example.com',
                    replyTo: 'jenkins@example.com',
                    mimeType: 'text/html'
                )
            }
        }
}   
