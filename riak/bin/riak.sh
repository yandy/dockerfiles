#! /bin/sh

IP_ADDRESS=$(ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)

# Open file descriptor limit
ulimit -n 4096

# Ensure the Erlang node name is set correctly
# sed -i.bak "s/riak@127.0.0.1/riak@${IP_ADDRESS}/" /etc/riak/riak.conf

# Start Riak
exec /usr/sbin/riak console
