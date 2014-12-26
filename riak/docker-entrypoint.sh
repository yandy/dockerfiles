#!/bin/bash
set -e

if [ "$1" = 'riak' ]; then
  chown -R riak:riak /var/lib/riak /var/log/riak
  exec gosu riak "$@"
fi

exec "$@"
