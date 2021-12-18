def progressBadge = addEmbeddableBadgeConfiguration(id: "totalProgress", subject: "Total Progress")

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
      steps {
        script {
          progress = sh(
            script: "python3 progress.py badge1",
            returnStdout: true).trim()

          progressBadge.setStatus(progress)
        }
      }
    }
  }
  environment {
    QEMU_IRIX = credentials('qemu-irix')
    ROMS_DIR = credentials('roms')
  }
}
