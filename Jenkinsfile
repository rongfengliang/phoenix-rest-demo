pipeline {
  agent {
    node {
      label 'docker-64'
    }

  }
  stages {
    stage('mix build') {
      steps {
        sh 'mix deps.get'
      }
    }
    stage('node deps') {
      steps {
        sh 'npm install'
      }
    }
    stage('mix run') {
      steps {
        sh 'mix phx.server'
      }
    }
  }
}