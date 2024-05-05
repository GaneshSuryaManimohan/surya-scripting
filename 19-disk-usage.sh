#!/bin/bash

DISK_USAGE=$(df -hT |grep xfs)
DISK_THRESHOLD=5
MESSAGE=""

while IFS= read -r line
do
    USAGE=$( echo $line |awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$( echo $line |awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER usage is more than $DISK_THRESHOLD, current usage is: $USAGE\n"
    fi
done <<< $DISK_USAGE

echo "Message is: 
$MESSAGE"