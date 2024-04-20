#!/bin/bash

echo "Please enter the username:: "

read USERNAME
useradd $USERNAME

passwd $USERNAME
echo "Please enter the password:: "
read -s PASSWORD

echo "user $USERNAME is added"