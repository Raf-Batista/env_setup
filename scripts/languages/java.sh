#/bin/bash

######## Install Amazon Corretto JDK ##########

 wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - 
 sudo add-apt-repository 'deb https://apt.corretto.aws stable main'

  sudo apt-get update; sudo apt-get install -y java-11-amazon-corretto-jdk

  sudo apt-get update && sudo apt-get install java-common

  wget https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz

sudo dpkg --install amazon-corretto-11-x64-linux-jdk.tar.gz

############# Setup Tomcat Server for Java ################

# Create user for Tomcat, for security reasons Tomcat should not be run under root user

sudo groupadd tomcat

sudo useradd -s /bin/false –g tomcat –d /opt/tomcat tomcat

cd /tmp

# Tomcat 9
curl -O http://mirrors.ibiblio.org/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz

# Create directory to extract the tar.gz
sudo mkdir /opt/tomcat

sudo tar xzvf apache-tomcat-9*tar.gz –C /opt/tomcat –strip-components=1

# Modify Tomcat user permissions

cd /opt/tomcat

# change group ownership
sudo chgrp –R tomcat /opt/tomcat

# give read access to the conf directory
sudo chmod –R g+r conf

# change directory permission
sudo chmod g+x conf

# give tomcat user ownership of webapps work temp and logs directory
sudo chown –R tomcat webapps/ work temp/ logs

Create system unit file


sudo update-java-alternatives -l | grep "/usr.*"