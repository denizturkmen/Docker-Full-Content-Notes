# Installation and Configuration of Sonarqube

**Sonarqube ?**
 
Installing docker on ubuntu with script
``` bash
sudo su -
curl https://raw.githubusercontent.com/denizturkmen/Docker-Full-Content-Notes/main/Installing%20useful%20tools/Sonarqube/docker-install.sh | bash

```

Installing docker-compose on ubuntu with script
``` bash
sudo su -
curl https://raw.githubusercontent.com/denizturkmen/Docker-Full-Content-Notes/main/Installing%20useful%20tools/Sonarqube/docker-compose-install.sh | bash

```

Run Docker Without sudo
``` bash
# create docker group
sudo groupadd docker

# add docker user to docker group
sudo usermod -aG docker $USER

# add docker group
newgrp docker

# run docker without sudo
docker ps
```


Installing sonarqube as docker in Ubuntu
``` bash


```