#!/bin/bash

if [ -n $1 ]
then
    if [ -n $2 ]
    then
        port="$2"
    fi
    cmd="nmap -T4 -vv -p $port --script=http* -oA httpvulnscan $1"
    echo $cmd
    $cmd
else
    echo "Please enter the IP you would like to perform an http vuln scan against"
fi
