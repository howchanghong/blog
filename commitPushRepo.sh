#!/bin/bash

echo -e "\033[0;32mCommit and Push Source Code to GitHub...\033[0m"

# Add changes to git.
git add public

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
