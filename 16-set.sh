#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F:%H:%M:%S)
SCRIPT_FILE=$( echo $0 | cut -d "." -f1 )
LOGFILE=/tmp/$SCRIPT_FILE-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

set -e

failure(){
    echo "Failed at $1: $2"

}
trap 'failure ${LINENO} "BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access"
    exit 1
else
    echo "Running the script as root user"
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