#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F:%H:%M:%S)
SCRIPT_FILE=$( echo $0 | cut -d "." -f1 )
LOGFILE=/tmp/$SCRIPT_FILE-$TIMESTAMP.log


if [ $USERID -ne 0 ]
then
    echo "Please switch to root user to execute this script"
    exit 1
else    
    echo "Running this script as a root user"
fi

for i in $@
do
    echo "Installing Package: $i "
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo "$i is already installed...SKIPPING"
    else
        echo "Need to Install:: $i "
done

