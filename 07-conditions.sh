#!/bin/bash

read $NUMBER
echo "Please enter the number: $1"

if [ $NUMBER -gt 10 ]; 
then
    echo "The given number $NUMBER is greater than 10"
else
    echo "The given number $NUMBER is less than 10 "
fi


# -gt: greater than, -lt: less than, -eq: equal to, -ge: greater then equal to, -le: less than equal to

### OUTPUT ###
#sh 07-conditions.sh 4
#The given number 4 is less than 10
#sh 07-conditions.sh 11
#The given number 11 is greater than 10