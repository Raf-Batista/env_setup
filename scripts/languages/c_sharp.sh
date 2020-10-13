#/bin/bash

########### Install .NET Core SDK ###########

# add this to end of bashrc file
# https://dot.net/v1/dotnet-install.sh 
# link to script 
# Change permission of script and execute 
# ./dotnet-install.sh -c Current
# export PATH=$PATH:/home/rafael/.dotnet
# export PATH=$PATH:/home/$USER/.dotnet

# Add Microsoft package signing key to trusted keys
# wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
# dpkg -i packages-microsoft-prod.deb

# sudo apt-get update; \
#   sudo apt-get install -y apt-transport-https && \
#   sudo apt-get update && \
#   sudo apt-get install -y dotnet-sdk-3.1

#  curl -LO https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz

#  tar -zxvf amazon-corretto-11-x64-linux-jdk.tar.gz

#  wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add -
#  sudo add-apt-repository 'deb http'

#  sudo apt-get update; sudo apt-get install -y java-11-amazon-corretto-jdk