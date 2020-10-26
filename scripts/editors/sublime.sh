#!/bin/bash 

# https://www.sublimetext.com/docs/3/linux_repositories.html#apt

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "sublime" ]]; then
            sublime=true
        fi

    done < $FILE

fi

if [[ -z ${surge+x} ]]; then

    echo "You do not have sublime installed"

    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

    sudo apt-get install apt-transport-https

    Select the channel to use:

    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list


    sudo apt-get update

    sudo apt-get install sublime-text

    printf "sublime\n" >> $DIR/installed.txt

else

    echo "You have surge installed"

fi


