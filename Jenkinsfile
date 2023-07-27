pipeline {
    options {
        durabilityHint 'PERFORMANCE_OPTIMIZED'
        ansiColor('xterm')
    }

    agent any

    tools {
        // Use the 'liquibase' step to install Liquibase from the configured installation
        liquibase 'LiquibaseTool'
    }

    stages {
        stage('Deploy in dbone') {
            steps {
                script {
                    def jdbcDriverUrl = 'https://download.microsoft.com/download/...'  // Define the variable here

                    sh """ 
                        pwd                        
                        echo 'deploy phase'
                        # wget ${jdbcDriverUrl} -O sqljdbc.jar
                        ls -ltra
                        cat /etc/*release*
                        liquibase --version
                        mkdir sql
                        if [ -d '/var/lib/jenkins/workspace/dbone/deploy/v1' ]; then
                            echo 'Installing config files in /var/lib/jenkins/workspace/dbone/deploy/v1...'
                            mv '/var/lib/jenkins/workspace/dbone/deploy/v1' '/var/lib/jenkins/workspace/sql'
                            mv '/var/lib/jenkins/workspace/dbone/liquibase.properties' '/var/lib/jenkins/workspace/'
                            liquibase update  
                            mv '/var/lib/jenkins/workspace/sql/v1' '/var/lib/jenkins/workspace/dbone/deploy/'
                            mv '/var/lib/jenkins/workspace/dbone/liquibase.properties' '/var/lib/jenkins/workspace/dbone'
                        fi
                    """
                }
            }
        }
    }
}
