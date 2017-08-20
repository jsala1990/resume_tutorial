basic workflow
``` bash
git status # do this to see whats up

git add filename # add changes from filename
git commit -m "some descriptive message, adding file"
git push # push to remote server
```

work off of a branch
``` bash
git checkout -b some_random_branch_name # create branch and move to it
git add changes
git commit -m "creating new branch"
git push --set-upstream origin some_random_branch_name
```
