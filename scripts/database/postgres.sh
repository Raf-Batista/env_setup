#!/bin/bash

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "postgres" ]]; then
            postgres=true
        fi

    done <$FILE

fi

if [[ -z ${postgres+x} ]]; then

    echo "You do not have surge installed"

    ########## Install Postgresql ############

    sudo apt install postgresql postgresql-contrib

    # set role postgres with password postgres
    sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

    # Install PGAdmin4
    # Install PostgreSQL key and add repository

    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

    # install PGAdmin repo
    sudo apt install pgadmin4 pgadmin4-apache2 -y

    printf "postgres\n" >>$DIR/installed.txt

else

    echo "You have surge installed"

fi
