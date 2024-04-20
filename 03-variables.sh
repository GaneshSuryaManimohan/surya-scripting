#!/bin/bash

echo "Please enter the username:: "

read USERNAME
useradd $USERNAME

echo "Please enter the password:: "
read -s PASSWORD
passwd $USERNAME $PASSWORD

echo "user $USERNAME is added"