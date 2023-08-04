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
                        mkdir sql1
                        #if [ -d '/var/lib/jenkins/workspace/dbone/deploy/v1' ]; then
                            #echo 'Installing config files in /var/lib/jenkins/workspace/dbone/deploy/v1...'
                        mv '/var/lib/jenkins/workspace/dbone/deploy/v1' '/var/lib/jenkins/workspace/sql1'
                        mv '/var/lib/jenkins/workspace/dbone/liquibase.properties' '/var/lib/jenkins/workspace/'
                        liquibase update  
                        # mv '/var/lib/jenkins/workspace/sql1/v1' '/var/lib/jenkins/workspace/dbone/deploy/'
                            #mv '/var/lib/jenkins/workspace/dbone/liquibase.properties' '/var/lib/jenkins/workspace/dbone'
                        #fi
                    #"""
                }
            }
        }
    }
}
