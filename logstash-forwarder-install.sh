#!/bin/bash

set -e
set -x

if [ $# -ne 1 ]
    then
        echo "Wrong number of arguments supplied."
        echo "Usage: $0 <server_url>."
        exit 1
fi

server_url=$1

wget $server_url/static/logstash-forwarder_amd64.tar.gz

tar xf logstash-forwarder_amd64.tar.gz
cd logstash-forwarder
./install.sh

