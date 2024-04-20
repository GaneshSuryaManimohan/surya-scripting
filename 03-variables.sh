#!/bin/bash

echo "Please enter the username:: "

read USERNAME
useradd $USERNAME

echo "Please enter the password:: "
read PASSWORD
passwd $PASSWORD

echo "user $USERNAME is added"