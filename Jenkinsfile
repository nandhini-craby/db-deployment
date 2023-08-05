pipeline {
    options {
        durabilityHint 'PERFORMANCE_OPTIMIZED'
        ansiColor('xterm')
    }

    agent any

    stages {
        stage('Deploy in dbone') {
            steps {
                script {
                    // def jdbcDriverUrl = 'https://download.microsoft.com/download/...'  // Define the variable here
                    sh """ 
                        pwd
                        // chmod -R 777 ../db-deployment
                        echo 'deploy phase'
                        ls -ltra
                        cat /etc/*release*
                        liquibase --version
                        rm -rf sql
                        mkdir sql
                        mv '/var/lib/jenkins/workspace/db-deployment/dbone/deploy/v1' '/var/lib/jenkins/workspace/test_db_sandbox/sql'
                        mv '/var/lib/jenkins/workspace/db-deployment/dbone/liquibase.properties' '/var/lib/jenkins/workspace/test_db_sandbox/liquibase.properties'
                        liquibase update  
                        mv /var/lib/jenkins/workspace/test_db_sandbox/sql/* /var/lib/jenkins/workspace/db-deployment/dbone/deploy/
                        mv '/var/lib/jenkins/workspace/test_db_sandbox/liquibase.properties' '/var/lib/jenkins/workspace/db-deployment/dbone/liquibase.properties'
                    """
                }
            }
        }
    }
}
