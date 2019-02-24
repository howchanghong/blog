#!/bin/bash

echo -e "\033[0;32mCommit and Push Source Code to GitHub...\033[0m"

# Delete public folder
rm public -r -fo

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
