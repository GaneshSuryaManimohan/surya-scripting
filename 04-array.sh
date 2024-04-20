#!/bin/bash

SQUAD=("Sehwag" "Sachin" "Gambhir" "Kohli" "Raina" "Dhoni" "Yuvraj" "Jadeja" "Bumrah" "Bhuvi" "Ashwin")

# This size of above array is 11, but the index points are 10. Index starts with 0, hence 10.

echo "Openers are:  ${SQUAD[0,1]}"
echo "Batsman In at 3: ${SQUAD[2]}"
echo "Batsman In at 4: ${SQUAD[3]}"
echo "Batsman In at 5: ${SQUAD[4]}"
echo "Batsman In at 6: ${SQUAD[5]}"
echo "Batsman In at 7: ${SQUAD[6]}"
echo "Batsman In at 8: ${SQUAD[7]}"
echo "Batsman In at 9: ${SQUAD[8]}"
echo "Batsman In at 10: ${SQUAD[9]}"
echo "Batsman In at 11: ${SQUAD[10]}"
