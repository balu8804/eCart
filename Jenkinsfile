pipeline{
agent any
stages{

stage('Build'){

steps{
sh 'mvn clean install'
archiveArtifacts artifacts: '**/*.war',
                   allowEmptyArchive: true,
                   fingerprint: true,
                   onlyIfSuccessful: true
}
}
}

}