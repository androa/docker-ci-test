node {
  git branch: 'jenkins', credentialsId: '92381a0d-100a-4863-bf53-73ac6bb01cf7', url: 'git@github.com:androa/docker-ci-test.git'

  stage 'Building image'
  def newApp = docker.build "mycorp/myapp:${env.BUILD_TAG}"
  newApp.push() // record this snapshot (optional)

  stage 'Test image'
  newApp.inside {
    sh 'make test'
  }

  stage 'Approve image'
  echo 'All good'
  //newApp.push 'latest'
}
