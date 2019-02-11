#!/bin/bash

if [ -n $1 ] ;then
    python -m SimpleHTTPServer $1
else
    echo "Provide the port you want to listen on"
fi


