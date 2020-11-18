#!/bin/bash

# https://github.com/rvm/ubuntu_rvm

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

  while read line; do

    if [[ $line == "rvm" ]]; then
      rvm=true
    fi

    if [[ $line == "ruby" ]]; then
      ruby=true
    fi

  done < $FILE

fi

if [[ -z ${rvm+x} ]]; then

  echo "You do not have rvm installed"

  sudo apt-get install software-properties-common
  sudo apt-add-repository -y ppa:rael-gc/rvm
  sudo apt-get update
  sudo apt-get install rvm

  echo 'source "/etc/profile.d/rvm.sh"' >>~/.bashrc

  echo "You may need to restart your computer to install Ruby. Run the same script to install it."

  printf "rvm\n" >> $DIR/installed.txt

elif [[ -z ${ruby+x} ]]; then

  echo "You have rvm installed but not ruby"

  rvm install 2.7.2 # find way to get latest version of ruby

  rvm default 2.7.2

  printf "ruby\n" >> $DIR/installed.txt

  # Set up helpful configuration for irb 

  ../tools/irb.sh

else

  echo "You have rvm and ruby installed"

fi
