#!/bin/bash

# DIRECTORY TO THE REPOSITORY
REPOSITORY="/home/shared/balahap-backend"

# This deploy key must not have challenge key.
# Uncomment this, if your keys doesn't have default names.
SSH_KEY="/home/bt_sosei/.ssh/github-deploy"

eval $(ssh-agent -s)
ssh-add $SSH_KEY

# test login just in case.
ssh -T git@github.com

cd $REPOSITORY

git pull

# log-out after pull
ssh-add -d $SSH_KEY
