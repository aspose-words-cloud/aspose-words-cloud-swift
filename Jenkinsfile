parameters {
        string(name: 'branch', defaultValue: 'master', description: 'branch to test')		
		string(name: 'apiUrl', defaultValue: 'https://api-qa.aspose.cloud', description: 'server url')		
}

node('words-linux') {
	cleanWs()
    if (!params.branch.contains("release")) {
        dir('swift') {
            try {
                stage('checkout'){
                    checkout([$class: 'GitSCM', branches: [[name: params.branch]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'LocalBranch', localBranch: "**"]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '361885ba-9425-4230-950e-0af201d90547', url: 'https://git.auckland.dynabic.com/words-cloud/words-cloud-sdk-swift.git']]])
                    withCredentials([usernamePassword(credentialsId: '6839cbe8-39fa-40c0-86ce-90706f0bae5d', passwordVariable: 'AppKey', usernameVariable: 'AppSid')]) {
                        sh 'mkdir -p Settings'
                        sh 'echo "{\\"AppSid\\": \\"$AppSid\\",\\"AppKey\\": \\"$AppKey\\", \\"BaseUrl\\": \\"$apiUrl\\"}" > Settings/servercreds.json'
                    }
                }
                
                docker.image('swift:5.0').inside{
                    stage('build'){
                        sh "swift build"
                    }
                
                    stage('tests'){
                        try{
                            sh "chmod +x ./Scripts/runTests.sh"
                            sh "./Scripts/runTests.sh"
                        } finally{
                            junit 'tests.xml'
                        }
                    }
                    
                    stage('clean-compiled'){
                        sh "rm -rf %s"
                    }
                }        
            } finally {
                deleteDir()
            }
        }
    }
}