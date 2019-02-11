#!/bin/bash

if [ -n "$1" ] 
then
    dest="dst $1"
    if [ -n "$2" ] 
    then
        interface="-i $2"
    else
        interface="-i eth0"
    fi
    if [ -n "$3" ]
    then
        port=" and port $3"
    else
        port=""
    fi
    cmd="tcpdump $interface $dest $port -vv -tttt -XX -s 0"
    echo "Executing: $cmd"
    $cmd
fi

echo "Invalid parameters, enter as follows: watchipandorportiptables.sh <destination> [port] [interface(defaults to eth0)]"
