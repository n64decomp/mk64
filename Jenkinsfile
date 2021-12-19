def totalProgBadge = addEmbeddableBadgeConfiguration(id: "totalProgress", subject: "Total Progress", color: "7d0000")
def gameCodeProgBadge = addEmbeddableBadgeConfiguration(id: "codeProgress", subject: "Game Code Progress", color: "7d0000")
def audioProgBadge = addEmbeddableBadgeConfiguration(id: "audioProgress", subject: "Audio Code Progress", color: "7d0000")

def bytesToDecompile = addEmbeddableBadgeConfiguration(id: "bytesLeft", subject: "Remaining Decompilable Bytes", color: "7d0000")
def m2cFuncs = addEmbeddableBadgeConfiguration(id: "m2c", subject: "Remaining Functions", color: "7d0000")
def nonmatchingFuncs = addEmbeddableBadgeConfiguration(id: "nonmatching", subject: "Non-matching Functions", color: "7d0000")

pipeline {
  agent any
  stages {
    stage('Build Tools') {
      steps {
        sh 'make -j4 -C tools/'
      }
    }
    stage('Extract Assets') {
      steps {
        sh 'ln -s "$ROMS_DIR/Mario Kart 64 (U) [!].z64" baserom.us.z64'
        // verify no assets were committed to repo
        sh '[ -z "$(find {actors,levels,textures}/ -name \'*.png\')" ]'
        sh '[ -z "$(find bin/ -name \'*.m64\' -or \'*.bin\')" ]'
        sh './extract_assets.py us'
      }
    }
    stage('Build U Source') {
      steps {
        sh 'make -j4 VERSION=us'
      }
    }
    stage('Update progress') {
      when {
        branch 'master'
      }
      steps {
        script {
          progress = sh(
            script: "python3 progress.py totalBadge",
            returnStdout: true).trim()
          totalProgBadge.setStatus(progress)
          
          progress = sh(
            script: "python3 progress.py gameBadge",
            returnStdout: true).trim()
          gameCodeProgBadge.setStatus(progress)
          
          progress = sh(
            script: "python3 progress.py audioBadge",
            returnStdout: true).trim()
          audioProgBadge.setStatus(progress)
          
          progress = sh(
            script: "python3 progress.py bytesToDecompile",
            returnStdout: true).trim()
          bytesToDecompile.setStatus(progress)
          
          progress = sh(
            script: "python3 progress.py m2cFuncs",
            returnStdout: true).trim()
          m2cFuncs.setStatus(progress)
          
          progress = sh(
            script: "python3 progress.py nonmatchingFuncs",
            returnStdout: true).trim()
          nonmatchingFuncs.setStatus(progress)
        }
      }
    }
  }
  environment {
    QEMU_IRIX = credentials('qemu-irix')
    ROMS_DIR = credentials('roms')
  }
}
