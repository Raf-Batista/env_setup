#!/bin/bash 

# You can use virtual environments in python to avoid dependency issues. Might not keep this script


# #https://www.howtoforge.com/tutorial/how-to-install-django-on-ubuntu/

# FILE=$DIR/installed.txt

# if [[ -f "$FILE" ]]; then

#   while read line; do

#     if [[ $line == "pip" ]]; then
#       pip=true
#     fi

#     if [[ $line == "django" ]]; then
#       django=true
#     fi

#   done < $FILE

# fi

# if [[ -z ${pip+x} ]]; then

#   echo "You do not have pip installed"

#   ../languages/python.sh

#   pip install django==3.0.0

#   printf "django\n" >> $DIR/installed.txt
 

# elif [[ -z ${django+x} ]]; then

#   echo "You have pip installed but not django"

#   pip install django==3.0.0

#   printf "django\n" >> $DIR/installed.txt

# else

#   echo "You have rvm and ruby installed"

# fi
