#!/bin/bash

echo "Displaying all variables:  $@"
echo "Displaying no.of variables passed: $#"
echo "Displaying Script Name: $0"
echo "Displaying current working directory: $PWD"
echo "Displaying home directory of current user: $HOME"
echo "Displaying the user: $USER"
echo "Displaying hostname: $HOSTNAME"
echo "Process ID of the running script: $$"
sleep 60 &
echo "Displaying process ID of background command: $!"

### OUTPUT ###
# sh 06-special-variables.sh 100 200
#Displaying all variables:  100 200
#Displaying no.of variables passed: 2
#Displaying Script Name: 06-special-variables.sh
#Displaying current working directory: /home/ec2-user/surya-scripting
#Displaying home directory of current user: /root
#Displaying the user: root
#Displaying hostname: ip-172-31-25-233.ec2.internal
#Process ID of the running script: 3601
#Displaying process ID of background command: 3753