#!/bin/bash

if [ -n $1 ]
then
    cewl $1 -m 2 -w cewl-wordlist.txt
else
    echo "Please provide the site you want to scrape for a wordlist!"
fi
