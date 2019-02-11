#!/bin/bash

if [ $# -ne 1 ];then
    echo 'Please provide the top level domain you want perform afxr on'
else
    dnsrecon -d $1 -t axfr
fi

