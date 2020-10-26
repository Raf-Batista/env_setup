 #!/bin/bash
 
FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "intelliJ" ]]; then
            intelliJ=true
        fi

    done < $FILE

fi

if [[ -z ${surge+x} ]]; then

    echo "You do not have intelliJ installed"

    # Install IntelliJ-idea
    sudo snap install intellij-idea-community --classic

    printf "intelliJ\n" >> $DIR/installed.txt

else

    echo "You have intelliJ installed"

fi

