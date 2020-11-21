#!/bin/bash 

# If you use a virtual machine, you can just back up the virtual hard disk after setting up your dev environment. 

# THIS SCRIPT WILL USE GIT FOR NOW, UPDATE THIS TO OTHER MEANS OF BACKING UP

backups_dir=~/backups

if [[ ! -d "$backups_dir" ]]; then 
    mkdir ~/backups
fi 
 
current_time=$(date "+%m.%d.%Y")

filename=backup.$current_time

cd ~ 

if [[ ! -f .git ]]; then 
    git init 
    cat ~/backups >> .gitignore
fi 

status=$(git status | grep modified)

if [[ $status == *"modified"* ]]; then
  git add . 
  git commit -m $current_time
fi

tar -zcvf ~/backups/$filename.tar.gz ~/

gpc -c ~/backups/$filename.tar.gz

# ~/backups/$filename.tar.gz.gpg

printf "\n0 19 * * 0 $DIR/scripts/tools/backup.sh\n" >>  var/spool/cron

# rm ~/backups/$filename.tar.gz ~/
