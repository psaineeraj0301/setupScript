# setupScript

// Docker permission //
ls -l /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock
sudo systemctl restart docker 
sudo systemctl status docker
sudo systemctl restart jenkins
