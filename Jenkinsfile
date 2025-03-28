properties([
	gitLabConnection('gitlab'),
	[$class: 'ParametersDefinitionProperty', 
		parameterDefinitions: [
			[$class: 'StringParameterDefinition', name: 'branch', defaultValue: 'master', description: 'the branch to build'],
			[$class: 'StringParameterDefinition', name: 'apiUrl', defaultValue: 'https://api-qa.aspose.cloud', description: 'api url'],
            [$class: 'BooleanParameterDefinition', name: 'ignoreCiSkip', defaultValue: false, description: 'ignore CI Skip'],
            [$class: 'StringParameterDefinition', name: 'credentialsId', defaultValue: '6839cbe8-39fa-40c0-86ce-90706f0bae5d', description: 'credentials id'],
            [$class: 'BooleanParameterDefinition', name: 'packageTesting', defaultValue: false, description: 'Testing package from repository without local sources. Used for prodhealthcheck'],
		]
	]
])

def needToBuild = false
def packageTesting = false

node('words-linux') {
	cleanWs()
    dir('swift') {
        try {
            stage('checkout'){
                checkout([$class: 'GitSCM', branches: [[name: params.branch]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'LocalBranch', localBranch: "**"]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '361885ba-9425-4230-950e-0af201d90547', url: 'https://git.auckland.dynabic.com/words-cloud/words-cloud-swift.git']]])
                
                sh 'git show -s HEAD > gitMessage'
                def commitMessage = readFile('gitMessage').trim()
                echo commitMessage
                needToBuild = params.ignoreCiSkip || !commitMessage.contains('[ci skip]')
                packageTesting = params.packageTesting
                sh 'git clean -fdx'
                
                if (needToBuild) {
                    withCredentials([usernamePassword(credentialsId: params.credentialsId, passwordVariable: 'ClientSecret', usernameVariable: 'ClientId')]) {
                        sh 'mkdir -p Settings'
                        sh 'echo "{\\"ClientId\\": \\"$ClientId\\",\\"ClientSecret\\": \\"$ClientSecret\\", \\"BaseUrl\\": \\"$apiUrl\\"}" > Settings/servercreds.json'
                    }
                }
            }
            
            if (packageTesting) {
                docker.image('swift:5.0').inside{
                    stage('build'){
                        sh "rm -rf ./Sources/AsposeWordsCloud"
                        sh "mkdir ./Sources/AsposeWordsCloudHealthProdCheck"
                        sh "cp ./Scripts/AsposeWordsCloudHealthProdCheck.swift ./Sources/AsposeWordsCloudHealthProdCheck/AsposeWordsCloudHealthProdCheck.swift"
                        sh "cp ./PackageHealthProdCheck.swift ./Package.swift"
                        sh "mv ./Tests/AsposeWordsCloudTests ./Tests/AsposeWordsCloudHealthProdCheckTests"
                        sh "cp ./Scripts/AsposeWordsCloudHealthProdCheckLinuxMain.swift ./Tests/LinuxMain.swift"
                        sh "swift build"
                    }
                
                    stage('tests'){
                        try{
                            sh "swift test --enable-code-coverage"
                        } finally{
                            junit 'tests.xml'
                        }
                        
                        if (currentBuild.result == "UNSTABLE") {
                            currentBuild.result = "FAILURE"
                        }
                    }
                    
                    stage('clean-compiled'){
                        sh "rm -rf %s"
                    }
                }
            }
            else if (needToBuild) {
                docker.image('swift:5.0').inside{
                    stage('build'){
                        sh "cp ./PackageInternalTesting.swift ./Package.swift"
                        sh "swift build"
                    }
                
                    stage('tests'){
                        try{
                            sh "chmod +x ./Scripts/runTests.sh"
                            sh "./Scripts/runTests.sh"
                        } finally{
                            junit 'tests.xml'
                        }
                        
                        if (currentBuild.result == "UNSTABLE") {
                            currentBuild.result = "FAILURE"
                        }
                    }
                    
                    stage('clean-compiled'){
                        sh "rm -rf %s"
                    }
                } 
            }
        } finally {
            deleteDir()
            
        }
    }
}