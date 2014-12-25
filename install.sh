#!/bin/sh

apt-get update
apt-get install -y docker.io

echo 'export LC_ALL=C' >> ~/.bashrc
echo '. /etc/bash_completion.d/docker.io' >> ~/.bashrc

curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /usr/local/bin/fig; chmod +x /usr/local/bin/fig

