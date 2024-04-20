#!/bin/bash

echo "Please enter the number: "
read NUMBER


if [ $NUMBER -gt 10 ];
then
    echo "The given number $NUMBER is greater than 10"
else
    echo "The given number $NUMBER is less than 10 "
fi


# -gt: greater than, -lt: less than, -eq: equal to, -ge: greater then equal to, -le: less than equal to

### OUTPUT ###
# sh 07-conditions.sh
#Please enter the number:
#13
#The given number 13 is greater than 10

# sh 07-conditions.sh
#Please enter the number:
#6
#The given number 6 is less than 10