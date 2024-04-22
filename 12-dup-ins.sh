#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F:%H:%M:%S)
SCRIPT_FILE=$( echo $0 | cut -d "." -f1 )
ALL_LOGS=/tmp/$SCRIPT_FILE-$TIMESTAMP.log
ERROR_LOGS=/tmp/$SCRIPT_FILE-$TIMESTAMP-error.log
SUCCESS_LOGS=/tmp/$SCRIPT_FILE-$TIMESTAMP-success.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "installation of $2.... $R FAILURE $N"
        exit 1 #manual exit in case of error
    else
        echo -e "installation of $2....$G SUCCESS $N"
    fi
}

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
    dnf list installed $i &>>$ALL_LOGS
    if [ $? -eq 0 ]
    then
        echo -e "$i is already installed...$Y SKIPPING $N "
    else
        dnf install $i -y 
        if [ $? -eq 0 ]
        then
            >> $SUCCESS_LOGS
        else
            2>> $ERROR_LOGS
        fi
        VALIDATE $? "$i"
    fi
done

