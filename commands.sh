#!/bin/bash

# These are the top commands in linux 
echo "*********************************************************"

echo "The current disk utilization on the server $HOSTNAME is: "
df -h; 

echo "*********************************************************"

echo "The current memory utilization or free space on server $HOSTNAME is: "
free -h; 

echo "*********************************************************"

echo "The current user on server $HOSTNAME is: "
whoami; 