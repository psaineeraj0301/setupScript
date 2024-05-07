#!/bin/bash
# USE UBUNTU20.04 - INSTANCE: 2GB RAM + 2VCPU MIN - WILL ONLY WORK
sudo apt update -y
sudo apt install openjdk-11-jdk -y
sudo apt update -y
sudo apt install openjdk-8-jdk -y
sudo apt install maven -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y
###
# Find the Jenkins WAR file and store the path in a variable
javawarpath=$(sudo find / -name jenkins.war)

# Check if Jenkins WAR file was found
if [ -z "$javawarpath" ]; then
    echo "Jenkins WAR file not found."
    exit 1
fi

# Run Jenkins using the Java executable and the path to the WAR file
sudo java -jar "$javawarpath" --httpPort=8081
