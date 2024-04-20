#!/bin/bash

NUM=45
NUM2=45

SUM=$(($NUM+$NUM2))
echo "Total is $SUM"

echo "Displaying all variables:  $@"
echo "Displaying no.of variables passed: $#"
echo "Displaying Script Name: $0"
echo "Displaying current working directory: $PWD"
echo "Displaying home directory of current user: $HOME"
echo "Displaying the user: $USER"
echo "Displaying hostname: $HOSTNAME"
echo "Displaying IP: $IP_ADDRESS"
echo "Process ID of the running script: $$"
