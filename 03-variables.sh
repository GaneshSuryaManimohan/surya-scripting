#!/bin/bash

echo "Please enter the username:: "

read USERNAME
useradd $USERNAME

passwd $USERNAME

echo "user $USERNAME is added"