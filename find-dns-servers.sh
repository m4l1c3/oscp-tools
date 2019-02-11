#!/bin/bash

if [ $# -ne 1 ];then
    echo "Please provide the top level domain you want to find name servers for."
else
    host -t ns $1 #| cut -d " " -f 4 | cut -d "." -f -3
fi
