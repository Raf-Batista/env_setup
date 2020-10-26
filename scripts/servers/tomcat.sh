#!/bin/bash 

# https://www.journaldev.com/39819/install-tomcat-on-linux

FILE=$DIR/installed.txt

if [[ -f "$FILE" ]]; then

    while read line; do

        if [[ $line == "tomcat" ]]; then
            tomcat=true
        fi

    done < $FILE

fi

if [[ -z ${tomcat+x} ]]; then

    echo "You do not have tomcat installed"

    # set up Tomcat user 
    sudo useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat

    # download Tomcat package 
    wget -c https://downloads.apache.org/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz

    # install Tomcat server 
    sudo tar xf apache-tomcat-9.0.34.tar.gz -C /opt/tomcat

    # create symbolic link to point to installation directory
    sudo ln -s /opt/tomcat/apache-tomcat-9.0.34 /opt/tomcat/updated

    # change ownership 

    sudo chown -R tomcat: /opt/tomcat/*

    # provide executable flags to all scripts in bin directory

    sudo sh -c 'chmod +x /opt/tomcat/updated/bin/*.sh'

    # configure Tomcat

cat <<- EOF > /etc/systemd/system/tomcat.service 
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target
 
[Service]
Type=forking
 
Environment="JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64"
Environment="CATALINA_PID=/opt/tomcat/updated/temp/tomcat.pid"
Environment="CATALINA_HOME=/opt/tomcat/updated/"
Environment="CATALINA_BASE=/opt/tomcat/updated/"
Environment="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
Environment="JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom"
 
ExecStart=/opt/tomcat/updated/bin/startup.sh
ExecStop=/opt/tomcat/updated/bin/shutdown.sh
 
User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always
 
[Install]
WantedBy=multi-user.target

EOF

    # load the daemon to update the system about the new file 

    sudo systemctl daemon-reload

    # enable Tomcat server to run on startup 

    sudo systemctl enable tomcat

    # allow Tomcat to user port 8080 

    sudo ufw allow 8080/tcp


    printf "tomcat\n" >> $DIR/installed.txt

else

    echo "You have tomcat installed"

fi

