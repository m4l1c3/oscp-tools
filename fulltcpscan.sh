#!/bin/bash

if [ -n $1 ] 
then
    nmap -T4 -p- -sV -sC -O -vv -oA fulltcpscan $1
else
    echo "Please enter the IP or host you would like to perform a full TCP scan against."
fi

