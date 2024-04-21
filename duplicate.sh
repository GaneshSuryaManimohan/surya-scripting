#!/bin/bash

echo "Please enter the username:: "

read USERNAME
useradd $USERNAME

echo "Please enter the password:: "
read -s password

echo "username is $USERNAME password is "