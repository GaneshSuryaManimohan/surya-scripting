#!/bin/bash

COURSE="DevOps from current script"

echo "Before Calling other script, course: $COURSE"
echo "process ID of current shell script: $$"

source ./14-other-script.sh
echo "After calling other script, course: $COURSE"

#OUTPUT:
# sh 15-call-from-source.sh
# Before Calling other script, course: DevOps from current script
# process ID of current shell script: 1726
# Calling DevOps from other script
# process ID of other shell script: 1726
# After calling other script, course: DevOps from other script

# in this way of calling source ./<script_name>.sh the variable will change but the process ID will not change.