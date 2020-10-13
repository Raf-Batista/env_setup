#!/bin/bash

########### Install Git ################

sudo apt install git-all

echo 'Enter Github Email Address'

read email

git config --global user.email $email

echo 'Enter Github Username'

read username

git config --global user.name $username

# Generate SSH Key

ssh-keygen -t rsa -b 4096 -C $email

# Start SSH agent in background
eval "$(ssh-agent -s)"

# Add SSH key to agent
ssh-add ~/.ssh/id_rsa

# Install xclip
sudo apt-get install xclip


# Copy ssh
xclip -sel clip < ~/.ssh/id_rsa.pub

echo 'The SSH was copied to your clipboard. Enter the SSH Key on github'

# Open github on chrome

google-chrome www.github.com
