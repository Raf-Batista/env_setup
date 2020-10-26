#!/bin/bash

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

  while read line; do

    if [[ $line == "java" ]]; then
      java=true
    fi

  done < $FILE

fi

if [[ -z ${java+x} ]]; then

  echo "You do not have java installed"

  ######## Install Amazon Corretto JDK ##########

  wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add -
  sudo add-apt-repository 'deb https://apt.corretto.aws stable main'

  sudo apt-get update
  sudo apt-get install -y java-11-amazon-corretto-jdk

  sudo apt-get update && sudo apt-get install java-common

  wget https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz

  sudo dpkg --install amazon-corretto-11-x64-linux-jdk.tar.gz

  printf "java\n" >> $DIR/installed.txt

else

  echo "You have java installed"

fi
