#!/bin/bash

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "postgres" ]]; then
            redis=true
        fi

    done < $FILE

fi

if [[ -z ${redis+x} ]]; then

    echo "You do not have redis installed"

    # https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-20-04

    ############## INSTALL REDIS SERVER #################

    # Begin by updating your local apt package cache:

    sudo apt update

    # Then install Redis by typing:

    sudo apt install redis-server

    # Open this file with your preferred text editor:

    sudo nano /etc/redis/redis.conf

    # Change supervised from no to systemd

    # Then, restart the Redis service to reflect the changes you made to the configuration file:

    sudo systemctl restart redis.service

    printf "redis\n" >> $DIR/installed.txt

else

    echo "You have redis installed"

fi
