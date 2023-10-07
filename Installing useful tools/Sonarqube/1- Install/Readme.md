# Installation and Configuration of Sonarqube

**Sonarqube ?**
 
Installing docker on ubuntu with script
``` bash
# Install
sudo su -
curl https://raw.githubusercontent.com/denizturkmen/Docker-Full-Content-Notes/main/Installing%20useful%20tools/Sonarqube/docker-install.sh | bash

```

Installing docker-compose on ubuntu with script
``` bash
# Install
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
# install
docker-compose -f sonarqube.yaml up -d 

# Cheching
docker ps 
docker-compose -f sonarqube.yaml ps

# looking log
docker logs -f container_id

```

Docker Host Requirements
``` bash
sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
ulimit -n 131072
ulimit -n 8192

```

Setting permanent **sysctl**
``` bash
# opening sysctl.conf
sudo vim /etc/sysctl.conf
    vm.max_map_count=524288
    fs.file-max=131072

# loading
sudo sysctl -p

# list
sudo sysctl -a | grep vm.max_map_count
sudo sysctl -a | grep fs.file-max=131072

# 2 way
sudo sysctl -w vm.max_map_count=524288 >> /etc/sysctl.conf
sudo sysctl -w fs.file-max=131072 >> /etc/sysctl.conf

# checking ulimit
ulimit -u

```









# Referance
``` bash
Docker hub: https://hub.docker.com/_/sonarqube
Compare version: https://www.sonarsource.com/products/sonarqube/downloads/
Docker Hub Image Version: https://hub.docker.com/_/sonarqube/tags

```