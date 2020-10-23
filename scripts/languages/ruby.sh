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

sudo apt-get install software-properties-common

sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm

echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc

# Need to restart computer

rvm install ruby



