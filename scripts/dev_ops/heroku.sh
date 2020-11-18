#!/bin/bash

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "rvm" ]]; then
            heroku=true
        fi

    done < $FILE

fi

if [[ -z ${heroku+x} ]]; then

    echo "You do not have heroku installed"

    ######## Install Heroku to deploy apps ##########
     sudo snap install --classic heroku

    printf "heroku\n" >> $DIR/installed.txt

else

    echo "You have heroku installed"

fi
