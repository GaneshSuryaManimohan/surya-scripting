#!/bin/bash

DISK_USAGE=$(df -hT |grep xfs)
DISK_THRESHOLD=5

while IFS= read -r line
do
    USAGE=$( echo $line |awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$( echo $line |awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        echo "$FOLDER usage is more than $DISK_THRESHOLD, current usage is: $USAGE"
    fi
done <<< $DISK_USAGE