#!/bin/bash

echo "\n [$(date)] Triggering Auto Sync Dotfiles"
BASEDIR=$(dirname "$0")
cd $BASEDIR

# brew bundle dump
whoami
cd ../brew_bundle
/usr/local/bin/brew bundle dump -f
cd -

# git commit
cd ../
git add .
git commit -m "auto commit" -a
git push origin master
