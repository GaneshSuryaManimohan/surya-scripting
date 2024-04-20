#!/bin/bash

NUMBER=$1

if{($NUMBER>10)
    print ("The given number $NUMBER is greater than 10")
}
else
    print ("The given number $NUMBER is less than 10")
fi