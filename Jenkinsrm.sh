sudo systemctl stop jenkins
sudo apt-get remove --purge jenkins
sudo rm -rf /var/lib/jenkins
sudo deluser jenkins
sudo rm /etc/apt/sources.list.d/jenkins.list
sudo apt-get update -y
sudo apt-get autoremove

