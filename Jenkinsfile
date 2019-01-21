pipeline {
    agent none
    stages {
        stage('Deploy Dhall kubernetes Apis') {
            when { branch 'dev' }
            agent { label 'Master' }
                steps {
                slackSend (message: "BUILD START: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' CHECK THE RESULT ON: https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
                sh 'cp -r . /usr/local/var/dhall-kubernetes'
            }
        }
        stage('Fill templates prod') {
            when { branch 'master' }
            agent { label 'prod' }
                steps {
                slackSend (message: "BUILD START: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' CHECK THE RESULT ON: https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
                sh 'ansible-playbook ansible/main.yml --extra-vars "@/ansible/settings.yml"'
            }
        }
    }
    post {
        failure {
            slackSend (color: '#ff0000', message: "FAIL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' https://cd.daf.teamdigitale.it/blue/organizations/jenkins/dhall-kubernetes/activity")
        }
    }
}
