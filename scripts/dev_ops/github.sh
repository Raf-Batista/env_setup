#!/bin/bash

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "git" ]]; then
            git=true
        fi

    done < $FILE

fi

if [[ -z ${git+x} ]]; then

    echo "You do not have git installed"

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
    xclip -sel clip <~/.ssh/id_rsa.pub

    echo 'The SSH was copied to your clipboard. Enter the SSH Key on github'

    # Open github on chrome

    # google-chrome www.github.com

    ####### GitHub CLI #########

    # Installation Instructions https://github.com/cli/cli/blob/trunk/docs/install_linux.md
    # Commands https://cli.github.com/manual/

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
    sudo apt-add-repository https://cli.github.com/packages
    sudo apt update
    sudo apt install gh

    printf "git\n" >> $DIR/installed.txt

else

    echo "You have git installed"

fi
