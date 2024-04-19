#!/bin/bash

# This example illustrates the use of variable in shell scripting.

echo "Harsha:: Hi MSD, Can we get to see you play in next year's IPL?"
echo "MSD:: What do you think Harsha?"
echo "Harsha:: There are few articles which tells that you retiring from IPL, are they true?"
echo "MSD: Defnitely NOT!!!"
echo "Crowd:: Cheers loudly!!"

# In the above example we need to type every thing manually, if we need to change the names here we need to edit everything, which is not
# a good practice

# so we define variables in the following way, there shouldn't be any space between = and value

P1=Harsha
P2=MSD
P3=Crowd

# we defined the variables, to call the variables use $variable as shown below

echo "$P1:: Hi $P2, Can we get to see you play in next year's IPL?"
echo "$P2:: What do you think $P1?"
echo "$P1:: There are few articles which tells that you retiring from IPL, are they true?"
echo "$P2: Defnitely NOT!!!"
echo "$P3:: Cheers loudly!!"