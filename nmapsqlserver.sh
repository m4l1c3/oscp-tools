#!/bin/bash

if [ -n $1 ] 
then
    nmap -T4 -p 1433 --script ms-sql* -vv -oA sqlserverscan $1
else
    echo "Please provide the IP you want to run sql server scripts against"
fi
