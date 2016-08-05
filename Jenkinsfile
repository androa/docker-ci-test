node {
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
