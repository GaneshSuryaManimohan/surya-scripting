#!/bin/bash

COURSE="DevOps from current script"

echo "Before Calling other script, course: $COURSE"
echo "process ID of current shell script: $$"

./14-other-script.sh
echo "After calling other script, course: $COURSE"

#OUTPUT:
# sh 13-current-script.sh
# Before Calling other script, course: DevOps from current script
# process ID of current shell script: 1656
# Calling DevOps from other script
# process ID of other shell script: 1657
# After calling other script, course: DevOps from current script

# in this way of calling ./<script_name>.sh the variable will not change but the process ID will change. Hence we use source command.
# refer 15-call-from-source.sh