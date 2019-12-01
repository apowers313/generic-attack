#!/bin/bash
CWD=`pwd`

# copy files
echo "Copying..."
rm -rf "" "gh-pages"
mkdir "gh-pages"
cp -a generic-attack-website/output/ gh-pages
echo "Done copying."

# push files
echo "Deploying..."
cd "gh-pages"
git init
git add *
git commit -am "deploy commit `date`"
git branch gh-pages
git remote add origin https://github.com/apowers313/generic-attack.git
git push --force origin gh-pages
echo "Done deploying."

cd "$CWD"