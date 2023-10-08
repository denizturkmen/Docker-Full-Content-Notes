# Installation and Configuration of Sonarqube

**Sonarqube ?**
 
Installing docker on ubuntu with script
``` bash
# Install
sudo su -
curl https://raw.githubusercontent.com/denizturkmen/Docker-Full-Content-Notes/main/Installing%20useful%20tools/Sonarqube/1-%20Install/docker-install.sh | bash

```

Installing docker-compose on ubuntu with script
``` bash
# Install
sudo su -
curl https://raw.githubusercontent.com/denizturkmen/Docker-Full-Content-Notes/main/Installing%20useful%20tools/Sonarqube/1-%20Install/docker-compose-install.sh | bash

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
docker-compose -f sonarqube-ce.yaml up -d 

# Cheching
docker ps 
docker-compose -f sonarqube-ce.yaml ps

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
sudo sysctl -a | grep fs.file-max

# 2 way
sudo sysctl -w vm.max_map_count=524288 >> /etc/sysctl.conf
sudo sysctl -w fs.file-max=131072 >> /etc/sysctl.conf

# checking ulimit
ulimit -u

```


Reserve proxy using nginx
``` bash
# create directory
sudo mkdir -p nginx

# vim default.conf
sudo vim default.conf

# started nginx 
docker-compose -f nginx.yaml up -d 

```

Exec to postgres container
``` bash
# exec
docker exec -it container_id bash

# psql
psql -U username -d database_name
psql -U sonar -d sonarqubedb -p
\l
\dt

```



# Referance
``` bash
Docker hub: https://hub.docker.com/_/sonarqube
Compare version: https://www.sonarsource.com/products/sonarqube/downloads/
Docker Hub Image Version: https://hub.docker.com/_/sonarqube/tags
Github sonarqube: https://github.com/SonarSource/docker-sonarqube/tree/master

```