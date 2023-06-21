pipeline {
  agent any
  stages {
    stage('Stage 1') {
      parallel {
        stage('Stage 1') {
          steps {
            sh 'echo "First Step"'
            sh 'echo "second step"'
          }
        }

        stage('Stage 2') {
          steps {
            sh 'echo "stage 2"'
          }
        }

      }
    }

    stage('Final stage') {
      steps {
        sh 'echo "final"'
      }
    }

  }
}