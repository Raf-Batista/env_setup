#!/bin/bash

backups_dir=~/backups

if [[ ! -d "$backups_dir" ]]; then 
    mkdir ~/backups
fi 

cd ~/backups
 
current_time=$(date "+%m.%d.%Y")

filename=backup.$current_time

tar -zcvf ~/backups/$filename.tar.gz ~/

gpc -c ~/backups/$filename.tar.gz
