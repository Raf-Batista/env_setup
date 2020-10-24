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

# Check if rvm is installed, if it is then we can just install Ruby

# https://stackoverflow.com/questions/59895/how-to-get-the-source-directory-of-a-bash-script-from-within-the-script-itself

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" 

FILE=$PWD/installed.txt


if test -f "$FILE"; then

    while read line; do 

    if [[ $line == "rvm" ]]; then 
      rvm=true
    fi 

    if [[ $line == "ruby" ]]; then 
      ruby=true
    fi 

  done < $FILE
fi

# https://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash


if [ -z ${rvm+x} ]; then 
  echo "rvm is installed already, would you like to install Ruby?"; 
else 
  echo "var is set to '$rvm'"; 
fi



# if test -f "$FILE"; then

#     while read line; do 

#     if [[ $line == "rvm" ]]; then 

#         printf "\nYou have rvm installed already, would you like to install Ruby? \n 'Y/N'\n"

#         read user_input

#         if [[ ${user_input^^} == "YES" || ${input^^} == "Y" ]]; then 
#           rvm install ruby
           
#           echo "ruby" >> $DIR/install.txt
          
#           break
#         fi

#     fi 

#     if [[ $line == "ruby" ]]; then 
#       echo "You have Ruby installed already"
#       break
#     fi 

#     done < FILE

# fi



# sudo apt-get install software-properties-common

# sudo apt-add-repository -y ppa:rael-gc/rvm
# sudo apt-get update
# sudo apt-get install rvm

# echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc

# echo "rvm" >> ../../../../installed.txt

# echo "You may need to restart your computer to install Ruby. Run the same script to install it."




