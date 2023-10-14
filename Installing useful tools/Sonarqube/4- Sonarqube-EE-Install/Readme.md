# Installation and Configuration of Sonarqube-EE


Installing sonarqube as docker in Ubuntu
``` bash
# install
docker-compose -f sonarqube-ee.yaml up -d 

# Cheching
docker ps 
docker-compose -f sonarqube-ee.yaml ps

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

Troubleshooting
``` bash
# changed mod host path
sudo chmod 777 /opt/sonarqube/*



```