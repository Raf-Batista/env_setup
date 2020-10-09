#!/bin/bash 

# https://hexdocs.pm/phoenix/installation.html#content

############### Install Elixir  ##############

# Add Erlang Solutions repo:
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb

sudo apt-get update

# Install the Erlang/OTP platform and all of its applications:
sudo apt-get install esl-erlang

#Install Elixir:
sudo apt-get install elixir

########### Install Phoenix ################

# install the Phoenix archive:

mix archive.install hex phx_new 1.5.1

# Install inotify tools: File system watcher which Phoenix uses for live code reloading

sudo apt-get install inotify-tools