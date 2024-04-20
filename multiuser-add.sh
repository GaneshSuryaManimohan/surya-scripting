#!/bin/bash

# Read the list of users from the text file
while read -r user; do
  # add the user
  useradd "$user"
done < add-users.txt