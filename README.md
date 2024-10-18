
- For some reason this doesn't run the Workflow after pull request is merged.
- Pull request is build, and if build succeeds PR is merged, but after merge it should run a second time (bc merging is a push to master branch).
- Manually creating a PR is run correctly
- Manually creating a PR in a excluded branch (`- '!branchname/**'` in Workflow) is also running correctly
- removing `- '!dependabot/**'` from excluded list does not fix this

For clean testing delete and re-create the respository on GitHub (because dangling open PRs sometimes cause dependabot to not running correctly):

    gh repo delete --yes
    gh repo create --public ${${$(git remote get-url origin)##*/}%.git}
    gh secret set DOCKERHUB_TOKEN --body '<TOKEN>'
