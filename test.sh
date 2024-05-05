#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

DISK_USAGE=$(df -hT |grep xfs)
DISK_THRESHOLD=5

while IFS= read -r line
do
    USAGE=$( echo $line |awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$( echo $line |awk -F " " '{print $NF}')
    if [ $USAGE -gt $DISK_THRESHOLD ]
    then
        echo -e "$FOLDER usage is more than $DISK_THRESHOLD, $R current usage is: $USAGE $N \n"
    elif [ "$USAGE" -ge 5 ] || [ "$USAGE" -lt 30 ];
    then
        echo -e "$FOLDER usage is more than $DISK_THRESHOLD, $Y current usage is: $USAGE $N \n"
    else
        echo -e "$FOLDER usage is less than $DISK_THRESHOLD, $G current usage is: $USAGE $N \n"
    fi
done <<< $DISK_USAGE