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
                    def jdbcDriverUrl = 'https://download.microsoft.com/download/...'  // Define the variable here

                    sh """ 
                        pwd
                        echo 'deploy phase'
                        # wget ${jdbcDriverUrl} -O sqljdbc.jar
                        ls -ltra
                        cat /etc/*release*
                        # wget https://github.com/liquibase/liquibase/releases/download/v4.23.0/liquibase-4.23.0.tar.gz
                        # tar -xzf liquibase-4.23.0.tar.gz
                        # sudo snap install liquibase
                        liquibase --version
                        rm -rf sql
                        mkdir sql
                        #if [ -d '/var/lib/jenkins/workspace/dbone/deploy/v1' ]; then
                            #echo 'Installing config files in /var/lib/jenkins/workspace/dbone/deploy/v1...'
                        mv '/var/lib/jenkins/workspace/db-deployment/dbone/deploy/v1' '/var/lib/jenkins/workspace/vidyanandhutest/sql'
                        mv '/var/lib/jenkins/workspace/db-deployment/dbone/liquibase.properties' '/var/lib/jenkins/workspace/vidyanandhutest/liquibase.properties'
                        liquibase update  
                        mv /var/lib/jenkins/workspace/vidyanandhutest/sql/* /var/lib/jenkins/workspace/db-deployment/dbone/deploy/
                        mv '/var/lib/jenkins/workspace/vidyanandhutest/liquibase.properties' '/var/lib/jenkins/workspace/db-deployment/dbone/liquibase.properties'
                        #fi
                    #"""
                }
            }
        }
    }
}
