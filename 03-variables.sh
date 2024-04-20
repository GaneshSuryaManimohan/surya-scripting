#!/bin/bash

echo "Please enter the username:: "

read USERNAME
useradd $USERNAME
echo "Please enter the password:: "
passwd $USERNAME

echo "user $USERNAME is added"