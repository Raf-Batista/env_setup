#!/bin/bash

########### OLD SCRIPT ######################

# # I used a different script to install ruby with rvm, this repo is linked on rvm's site. Will keep this script here for now

# # https://github.com/rvm/ubuntu_rvm

# ############ Install Ruby with rvm #################

# # software-properties-common is required  to add PPA repositories.
# sudo apt-get install software-properties-common

# # add ppa and install the package

# sudo apt-add-repository -y ppa:rael-gc/rvm
# sudo apt-get update
# sudo apt-get install rvm

# # change terminal window to login shell
# echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc

# # install ruby 

# rvm install ruby

################ NEW SCRIPT ################# 

# https://github.com/rvm/ubuntu_rvm

# Check if rvm is installed, if it is then we can just install Ruby

FILE=$PWD/installed.txt

if test -f "$FILE"; then

    while read line; do 

    if [[ $line == "rvm" ]]; then 

        printf "\nYou have rvm installed already, would you like to install Ruby? \n 'Y/N'"

        read user_input

        if [[ ${user_input^^} == "YES" || ${input^^} == "Y" ]]; then 
          rvm install ruby
         
          break
        fi

    fi 

    done < FILE

fi

sudo apt-get install software-properties-common

sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm

echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc

echo "rvm" >> ../../../../installed.txt

echo "You may need to restart your computer to install Ruby. Run the same script to install it."




