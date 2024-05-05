#!/bin/bash

COURSE="DevOps from current script"

echo "Before Calling other script, course: $COURSE"
echo "process ID of current shell script: $$"

./14-other-script.sh
echo "After calling other script, course: $COURSE"