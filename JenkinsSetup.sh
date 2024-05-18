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

# Run this cmd to get ssh keys from manual
# copy this key from terminal and paste in jenkins key-management for github
ssh-keyscan -H github.com
###

# Run the below two cmds only if you want to run jenkins o port 8081
# Find the Jenkins WAR file and store the path in a variable
# uncomment below line
# javawarpath=$(sudo find / -name jenkins.war)
# Run Jenkins using the Java executable and the path to the WAR file
# uncomment below line
# sudo java -jar "$javawarpath" --httpPort=8081
###
