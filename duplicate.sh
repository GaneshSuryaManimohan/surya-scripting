#!/bin/bash

echo "Please enter the username:: "

read USERNAME
useradd $USERNAME
passwd $USERNAME

echo "username is $USERNAME password is "