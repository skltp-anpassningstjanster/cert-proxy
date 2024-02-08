def image
def imageVersion = '1.0.0-RC2'

node('docker') {
    stage('Checkout') {
        checkout scm
    }
    stage('Build image') {
        image = docker.build("ntjp/cert-proxy:${imageVersion}", "./nginx-image")
    }
    stage('Publish image') {
        docker.withRegistry("${params.REGISTRY_URL}", "${params.REGISTRY_CREDS}") {
            image.push()
            image.push('latest')
        }
    }
}