#!/bin/bash

HOSTNAME=`hostname -f`
FILENAME=/etc/apt/sources.list.d/basho.list
OS=ubuntu
DIST=trusty
PACKAGE_CLOUD_RIAK_DIR=https://packagecloud.io/install/repositories/basho/riak
curl "${PACKAGE_CLOUD_RIAK_DIR}/config_file.list?os=${OS}&dist=${DIST}&name=${HOSTNAME}" > $FILENAME

