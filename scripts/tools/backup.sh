#!/bin/bash 

# If you use a virtual machine, you can just back up the virtual hard disk after setting up your dev environment. 

# compress the home directory

backups_dir=~/backups

if [[ ! -d "$backups_dir" ]]; then 
    mkdir ~/backups
fi 
 
current_time=$(date "+%m.%d.%Y")

filename=backup.$current_time

tar -zcvf ~/backups/$filename.tar.gz ~/

# check for changes, if there are changes then
    # stage and commit the changes
    # upload to google drive
    # gpg -c filename 
    # gpg filename.gpg
# 

# cd ~ 
# git innit 
# cat backups >> .gitignore