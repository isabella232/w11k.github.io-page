#! /bin/bash

# Build
cd `dirname $0`
cd ..
#grunt build

# Publish
DEPLOY=temp_w11k_repo
rm -rf $DEPLOY
cp -r dist $DEPLOY
cd $DEPLOY
git init
git add --all
git commit -m "deploy"
git remote add origin https://github.com/w11k/w11k.github.io.git
git fetch
#git branch --set-upstream-to master origin/master
git push -f origin master
#cd ..
#rm -rf $DEPLOY


