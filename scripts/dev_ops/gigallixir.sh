#!/bin/bash

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "gigalixir" ]]; then
            gigalixir=true
        fi

    done < $FILE

fi

if [[ -z ${gigalixir+x} ]]; then

    echo "You do not have gigalixir installed"

    ######## Install Giga;ixir to deploy Phoenix apps ##########
     pip3 install gigalixir --user
     echo 'export PATH=~/.local/bin:$PATH' >> ~/.bash_profile
     source ~/.bash_profile

    printf "gigalixir\n" >> $DIR/installed.txt

else

    echo "You have gigalixir installed"

fi
