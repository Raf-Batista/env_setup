#!/bin/bash

# https://docs.netlify.com/cli/get-started/

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "netlify" ]]; then
            netlify=true
        fi

    done < $FILE

fi

if [[ -z ${netlify+x} ]]; then

    echo "You do not have netlify installed"

    npm install netlify-cli -g

    printf "netlify\n" >>$DIR/installed.txt

else

    echo "You have netlify installed"

fi
