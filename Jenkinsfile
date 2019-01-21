pipeline {
    agent none
    stages {
        stage('Deploy Dhall kubernetes Apis') {
            when { branch 'dev' }
            agent { label 'Master' }
                steps {
                slackSend (message: "BUILD START: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' CHECK THE RESULT ON: https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
                sh 'cp -r . /usr/local/var/dhall-kubernetes'
                slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}] deployed in '${env.DEPLOY_ENV}' https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
}
        }
        stage('Deploy Dhall kubernetes Apis') {
            when { branch 'prod' }
            agent { label 'prod' }
                steps {
                slackSend (message: "BUILD START: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' CHECK THE RESULT ON: https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
                sh 'cp -r . /usr/local/var/dhall-kubernetes'
                slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}] deployed in '${env.DEPLOY_ENV}' https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
            }
        }
    }
    post {
        failure {
            slackSend (color: '#ff0000', message: "FAIL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
        }
    }
}
