# !/bin/bash

# https://docs.docker.com/engine/install/ubuntu/

###### Install Docker ########

sudo apt-get update

 sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

###### Install Docker Compose #########

# download the current stable release of Docker Compose: 
# To install a different version of Compose, substitute 1.25.5 with the version of Compose you want to use.
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary:

sudo chmod +x /usr/local/bin/docker-compose

 # Add Docker’s official GPG key:

 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add

# Set up stable repository

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

 # Update the apt package index, and install the latest version of Docker Engine and containerd, or go to the next step to install a specific version:

  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io

# verify docker is installed
# sudo docker run hello-world

######### Instsall Docker Compose

# download the current stable release of Docker Compose:
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# apply executable to the binary
sudo chmod +x /usr/local/bin/docker-compose

# run docker without sudo 
sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker 
