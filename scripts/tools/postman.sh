#!/bin/bash 

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "postman" ]]; then
            pomanst=true
        fi

    done < $FILE

fi

if [[ -z ${postman+x} ]]; then

    echo "You do not have postman installed"

    sudo snap install postman

    printf "postman\n" >> $DIR/installed.txt

else

    echo "You have postman installed"

fi