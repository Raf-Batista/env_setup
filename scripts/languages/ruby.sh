#!/bin/bash

########### OLD SCRIPT ######################

# # I used a different script to install ruby with rvm, this repo is linked on rvm's site. Will keep this script here for now

# # https://github.com/rvm/ubuntu_rvm

# ############ Install Ruby with rvm #################

# # software-properties-common is required  to add PPA repositories.
# sudo apt-get install software-properties-common

# # add ppa and install the package

# sudo apt-add-repository -y ppa:rael-gc/rvm
# sudo apt-get update
# sudo apt-get install rvm

# # change terminal window to login shell
# echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc

# # install ruby

# rvm install ruby

################ NEW SCRIPT #################

# https://github.com/rvm/ubuntu_rvm

# https://stackoverflow.com/questions/59895/how-to-get-the-source-directory-of-a-bash-script-from-within-the-script-itself

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

if [ -z ${rvm+x} ]; then

  echo "You do not have rvm installed"

  sudo apt-get install software-properties-common
  sudo apt-add-repository -y ppa:rael-gc/rvm
  sudo apt-get update
  sudo apt-get install rvm

  echo 'source "/etc/profile.d/rvm.sh"' >>~/.bashrc

  echo "You may need to restart your computer to install Ruby. Run the same script to install it."

  printf "rvm\n" >> $DIR/installed.txt

elif [ -z ${ruby+x} ]; then

  echo "You have rvm installed but not ruby"

  rvm install ruby

  printf "ruby\n" >> $DIR/installed.txt

else

  echo "You have rvm and ruby installed"

fi
