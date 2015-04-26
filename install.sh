#!/bin/sh

apt-get update
apt-get install -y python-pip libpython-dev curl wget

echo 'export LC_ALL=C' >> ~/.bashrc

wget -qO- https://get.docker.com/ | sh

curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
