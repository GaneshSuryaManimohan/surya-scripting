#!/bin/bash

# Read the list of users from the text file
while read -r user; do
  # Delete the user
  userdel "$user"
done < users.txt