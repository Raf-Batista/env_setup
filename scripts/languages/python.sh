#!/bin/bash

#https://www.howtoforge.com/tutorial/how-to-install-django-on-ubuntu/

# Create symbolic link to use "python" as default command instead of "python3"

update-alternatives --install /usr/bin/python python /usr/bin/python3 1

# install package manager for python

sudo apt install python3-pip -y

# create symbolic link to use "pip" instead of "pip3"
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

printf "pip\n" >> $DIR/installed.txt

