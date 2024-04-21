#!/bin/bash

USERID=$(id -u)
VALIDATE(){
    echo "Exit Status: $1"
    echo "Current Operation: $2"

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

echo "GIT Installation"

dnf install git -y
VALIDATE $? "Installion of GIT: "


echo "****************************************************************************************************"
