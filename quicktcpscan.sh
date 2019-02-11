#!/bin/bash

if [ -n $1 ]
then
    echo "Executing nmap quicktcpscan on: $1"
    nmap -T4 -sV -sC -vv -oA quicktcpscan $1
else
    echo "Please provide the IP address or host you would like to perform a quick TCP scan on"
fi
