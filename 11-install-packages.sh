#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F:%H:%M:%S)
SCRIPT_FILE=$( echo $0 | cut -d "." -f1 )
LOGFILE=/tmp/$SCRIPT_FILE-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "installation of $2.... $R FAILURE $N"
        exit 1
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
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i is already installed...$Y SKIPPING $N "
    else
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    fi
done

