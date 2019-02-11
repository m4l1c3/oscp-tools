#!/bin/bash

# nmap -p 445 --script=smb* -oA smbscan -vv 10.11.1.31

if [ -n $1 ] 
then
    nmap -p 139,445 -vv --script=smb-vuln-cve2009-3103.nse,smb-vuln-ms06-025.nse,smb-vuln-ms07-029.nse,smb-vuln-ms08-067.nse,smb-vuln-ms10-054.nse,smb-vuln-ms10-061.nse,smb-vuln-ms17-010.nse -oA smbscan $1
else
    echo "Please provide the targets you want to scan"
fi
