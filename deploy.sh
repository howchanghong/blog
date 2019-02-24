#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Delete public folder
rm public -r -fo

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push 

# Come Back
cd ..

echo -e "\033[0;32mCommit and Push Source Code to GitHub...\033[0m"

# Add changes to git.
git add public

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push