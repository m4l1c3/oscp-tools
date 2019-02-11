#!/bin/bash

if [ -n $1 ]
then
    echo "Executing nmap quicktcpscan on: $1"
    nmap -T4 -sU -sV -sC -vv -oA quickudpscan $1
else
    echo "Please enter the host or IP you would like to perform a quick UDP scan on"

fi
