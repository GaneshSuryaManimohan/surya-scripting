#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e " $G Source Directory Exists $N "
else
    echo -e "$R Please make sure source directory exists $N "
    exit 1
fi

FILES=$( find $SOURCE_DIRECTORY -name "*.log" -mtime +14; -exec zip -r zipped.zip {} \; -exec mv {} /var/ARCHIVES \ )

echo "Files to compress:
$FILES"

# while IFS= read -r line
# do 
#     echo -e "$R compressing File $N: $line"
#      $line
# done <<< $FILES
