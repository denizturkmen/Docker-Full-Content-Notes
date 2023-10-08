# Sonarqube is Upgrade

Upgrading sonarqube 
``` bash
# install
docker-compose -f sonarqube.yaml up -d 

# Cheching
docker ps 
docker-compose -f sonarqube.yaml ps

# looking log
docker logs -f container_id

# start db migration
sonarqube_server_ip_addresses:port_number/setup
192.168.1.40:9000/setup

```
