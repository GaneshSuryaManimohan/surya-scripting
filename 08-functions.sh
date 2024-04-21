#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F:%H:%M:%S)
SCRIPT_FILE=$($0 |cut -d "." -f1 )
LOGFILE=$/tmp/$SCRIPT_FILE-$TIMESTAMP.log


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....Operation FAILED"
        exit 1
    else
        echo "$2....Operation SUCCESS"
    fi    

}

if [ $USERID -ne 0 ]
then
    echo "Please switch to root user to execute the script"
    exit 1
else
    echo "Running the script as root user!!!"
fi

echo "****************************************************************************************************"

echo "MySQL Installation"

dnf install mysql -y
VALIDATE $? "Installion of MYSQL: "


echo "****************************************************************************************************"

echo "Nginx Installation"

dnf install nginx -y
VALIDATE $? "Installion of NGINX: "


echo "****************************************************************************************************"
