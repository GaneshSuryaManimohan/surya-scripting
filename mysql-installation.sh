#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please switch to root user to execute the script"
else
    echo "Running the script as root user!!!"
fi

dnf install mysql -y
