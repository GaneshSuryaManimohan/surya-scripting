#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0]
    echo "Please switch to root user to execute this script"
    exit 1
else
    echo "Running this script as a root user"
fi

echo " All Packages $@ "