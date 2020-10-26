#!/bin/bash

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "zeal" ]]; then
            zeal=true
        fi

    done < $FILE

fi

if [[ -z ${zeal+x} ]]; then

    echo "You do not have zeal installed"

    ####### Install Zeal #######

    sudo add-apt-repository ppa:zeal-developers/ppa
    sudo apt-get update
    sudo apt-get install zeal

    printf "zeal\n" >> $DIR/installed.txt

else

    echo "You have zeal installed"

fi

