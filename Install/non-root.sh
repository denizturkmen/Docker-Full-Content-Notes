!#/bin/bash

sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
