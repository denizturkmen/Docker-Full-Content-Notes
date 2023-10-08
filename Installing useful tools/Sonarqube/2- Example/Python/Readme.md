# Python Analysis with Sonarscanner


Install python3
``` bash
# Check
python3 --version

# Pip3 Install 
sudo apt update
sudo apt install python3-pip

# Verify Pip3
pip3 --version

```

Create project for python
``` bash
# open hello.py
vim hello.py

# run
python3 hello.py

```


Sonar scanner install on ubuntu
``` bash
# updated
sudo apt-get update
sudo apt-get install unzip wget nodejs

# dowland
sudo mkdir /downloads/sonarqube -p
sudo cd /downloads/sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip
sudo unzip sonar-scanner-cli-4.2.0.1873-linux.zip
sudo mv sonar-scanner-4.2.0.1873-linux /opt/sonar-scanner

# propertes file
sudo vim /opt/sonar-scanner/conf/sonar-scanner.properties
    sonar.host.url=http://192.168.1.40:9000
    sonar.sourceEncoding=UTF-8

# environment variables configuration
sudo vim /etc/profile.d/sonar-scanner.sh
    #/bin/bash
    export PATH="$PATH:/opt/sonar-scanner/bin"

# reboot machine
sudo reboot

# source
sudo source /etc/profile.d/sonar-scanner.sh

```