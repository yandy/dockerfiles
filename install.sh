#!/bin/sh

apt-get update
apt-get install -y docker.io

echo 'export LC_ALL=C' >> ~/.bashrc
echo '. /etc/bash_completion.d/docker.io' >> ~/.bashrc

