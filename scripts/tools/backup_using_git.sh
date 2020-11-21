#!/bin/bash 

cd ~/backups
 
current_time=$(date "+%m.%d.%Y")

if [[ ! -f .git ]]; then 
    git init 
    # set origin to repo
fi 

status=$(git status | grep modified)

if [[ $status == *"modified"* ]]; then
  git add . 
  git commit -m $current_time
  # push to repo
fi

