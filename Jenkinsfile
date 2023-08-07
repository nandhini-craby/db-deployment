pipeline {
    options {
        durabilityHint 'PERFORMANCE_OPTIMIZED'
        ansiColor('xterm')
    }

    agent any

    stages {
        when {
                    expression { choice == 'deploy'}
                }
        stage('Deploy in dbone') {
            steps {
                script {
                    // def jdbcDriverUrl = 'https://download.microsoft.com/download/...'  // Define the variable here
                    sh """ 
                        pwd
                        echo 'deploy phase'
                        ls -ltra
                        cat /etc/*release*
                        liquibase --version
                        rm -rf sql
                        mkdir sql
                        mv '/var/lib/jenkins/workspace/db-deployment/dbone/deploy/v1' '/var/lib/jenkins/workspace/vidyanandhutest/sql'
                        mv '/var/lib/jenkins/workspace/db-deployment/dbone/liquibase.properties' '/var/lib/jenkins/workspace/vidyanandhutest/liquibase.properties'
                        liquibase update  
                        mv /var/lib/jenkins/workspace/vidyanandhutest/sql/* /var/lib/jenkins/workspace/db-deployment/dbone/deploy/
                        mv '/var/lib/jenkins/workspace/vidyanandhutest/liquibase.properties' '/var/lib/jenkins/workspace/db-deployment/dbone/liquibase.properties'
                    """
                }
            }
        }
    }
}
