 #!/bin/bash
 
############# Install Elixir  ##############

# Add Erlang Solutions repo:
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb

sudo apt-get update

# Install the Erlang/OTP platform and all of its applications:
sudo apt-get install esl-erlang

#Install Elixir:
sudo apt-get install elixir

# remove the Erlang package
rm $DIR/../erlang-solutions_2.0_all.deb

printf "elixir\n" >> $DIR/installed.txt