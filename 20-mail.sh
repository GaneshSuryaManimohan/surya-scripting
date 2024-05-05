#!/bin/bash

RAM_USAGE=$(free -h)

echo "Hi Team, RAM utilization on $HOSTNAME: 
$RAM_USAGE" | mail -s "RAM Utilization" thuttagunta.suryamanimohan@gmail.com