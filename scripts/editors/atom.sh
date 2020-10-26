#!/bin/bash 

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "atom" ]]; then
            atom=true
        fi

    done < $FILE

fi

if [[ -z ${atom+x} ]]; then

    echo "You do not have atom installed"

    sudo apt-get install atom

    printf "atom\n" >> $DIR/installed.txt

else

    echo "You have surge installed"

fi

# Install Atom


# https://nearsoft.com/blog/how-to-install-packages-in-atom/

# Install Atom packages

# apm install atom-live-server
# apm install atom-runner
# apm install busy-signal
# apm install color-picker
# apm install emmet
# apm install intentions
# apm install language-babel
# apm install linter
# apm install linter-eslint
# apm install linter-ruby
# apm install linter-ui-default
# apm install minimap
# apm install pigments
# apm install turbo-javascript