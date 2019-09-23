name: Deploy successful commits

on:
  #[status]
  check_suite:
    type: [completed]

jobs:
  create-deployment:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: Checkout event data
        run: ls
        #run: ls ${GITHUB_EVENT_PATH}
