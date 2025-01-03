#!/bin/bash

# bundles path already mapped as volume in docker-run.ps1
cd /usr/local/lib/serverHome/WEB-INF/bundles
pwd  # Print the current working directory
ls -a  # Lists all files in a directory, including hidden files and directories
echo

# run coldfusion package manager shell script
cd /usr/local/lib/serverHome/WEB-INF/cfusion/bin
pwd  # Print the current working directory
# ls -a  # Lists all files in a directory, including hidden files and directories
#echo

# install cf package(s)
./cfpm.sh install saml,debugger
echo
#sleep 5  # Waits 5 seconds.

# list installed packages
./cfpm.sh list
echo
#sleep 5  # Waits 5 seconds.