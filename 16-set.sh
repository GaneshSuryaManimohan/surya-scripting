#!/bin/bash

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