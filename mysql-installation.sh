#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please switch to root user to execute the script"
    exit 1
else
    echo "Running the script as root user!!!"
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then
    echo "Installation of MySQL..... FAILED"
    exit 1
else
    echo "Installation of MySQL..... SUCCESS"
fi


