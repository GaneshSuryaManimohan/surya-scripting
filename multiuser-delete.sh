#!/bin/bash

# Read the list of users from the text file
while read -r user; do
  # Delete the user
  userdel -r "$user"
done < users.txt