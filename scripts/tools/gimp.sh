#!/bin/bash 

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "gimp" ]]; then
            gimp=true
        fi

    done < $FILE

fi

if [[ -z ${gimp+x} ]]; then

    echo "You do not have gimp installed"


    sudo snap install gimp

    printf "gimp\n" >> $DIR/installed.txt

else

    echo "You have gimp installed"

fi