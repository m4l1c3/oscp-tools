#!/bin/bash

if [ -n $1  ];then
    if [ -n $2 ]
    then
        port="-p $2"
    else
        port=""
    fi

    gobuster -u "$1"  -t 100 -w /usr/share/seclists/Discovery/Web_Content/common.txt > gobuster-common.txt 
    gobuster -u $1  -t 100 -w /usr/share/seclists/Discovery/Web_Content/big.txt > gobuster-big.txt
    gobuster -u $1  -t 100 -w /usr/share/seclists/Discovery/Web_Content/raft-large-directories.txt gobuster-raft-large-directories.txt
    # gobuster -u $1  -t 100 -w /usr/share/seclists/Discovery/Web_Content/raft-large-files-lowercase.txt
    # gobuster -u $1  -t 100 -w /usr/share/seclists/Discovery/Web_Content/big.txt -x txt,php,asp,aspx,jsp
else
    echo "Please provide the IP or address you want to bust"
fi


