#!/bin/bash 

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "surge" ]]; then
            surge=true
        fi

    done < $FILE

fi

if [[ -z ${surge+x} ]]; then

    echo "You do not have surge installed"

    npm install --global surge

    printf "surge\n" >> $DIR/installed.txt

else

    echo "You have surge installed"

fi
