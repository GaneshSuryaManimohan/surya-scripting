#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F:%H:%M:%S)
SCRIPT_FILE=$( echo $0 |cut -d "." -f1 )
LOGFILE=/tmp/$SCRIPT_FILE-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2....$R Operation FAILED $N"
        exit 1
    else
        echo -e "$2.... $G Operation SUCCESS $N"
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

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installion of MYSQL: "


echo "****************************************************************************************************"

echo "Nginx Installation" 

dnf install nginx -y &>>$LOGFILE
VALIDATE $? "Installion of NGINX: "


echo "****************************************************************************************************"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installion of Docker: "