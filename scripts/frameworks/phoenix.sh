#!/bin/bash

# https://hexdocs.pm/phoenix/installation.html#content

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "node" ]]; then
            node=true
        fi

        if [[ $line == "elixir" ]]; then
            elixir=true
        fi

        if [[ $line == "ruby" ]]; then
            phoenix=true
        fi

    done < $FILE

fi

if [[ -z ${node+x} ]]; then

    printf "\nNode is an optional dependency. Pheonix uses webpack to compile static assets (css, javascript, etc) It is recommended you install Node. \n

    Do you want to install Node? If not then the installation will continue with Elixir and Phoenix\n"

    read user_input

    if [[ ${user_input^^} == "YES" || ${user_input^^} == "Y" ]]; then

        $DIR/frameworks/node.sh
    fi

fi

if [[ -z ${elixir+x} ]]; then

    echo "You do not have elixir installed"

    # run script to install elixir
    $DIR/languages/elixir.sh

    ############## Install Phoenix ################

    # install the Phoenix archive:

    mix archive.install hex phx_new 1.5.6

    # Install inotify tools: File system watcher which Phoenix uses for live code reloading

    sudo apt-get install inotify-tools

    printf "phoenix\n" >>$DIR/installed.txt

elif [[ -z ${Phoenix+x} ]]; then

    echo "You have elixir installed but not phoenix"

    # install the Phoenix archive:

    mix archive.install hex phx_new 1.5.6

    # Install inotify tools: File system watcher which Phoenix uses for live code reloading

    sudo apt-get install inotify-tools

    printf "phoenix\n" >>$DIR/installed.txt

else

    echo "You have elixir and phoenix installed"

fi
