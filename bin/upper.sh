#!/bin/bash

TIME=$(date +%T)
LAVG=$(cat /proc/loadavg | cut -d" " -f1,2,3)
UPT=$(cat /proc/uptime | cut -d" " -f1)

DAYS=$(echo "scale; $UPT / 86160 " | bc)

HH=$( echo "scale=2; $UPT / 86160 " | bc)  
HOUR=$( echo "$HH - $DAYS " | bc )

USERS=$(who | wc -l)

MINUTES=$( echo "scale=2; $UPT / 86160 " | bc)  

echo "$TIME up $DAYS days,  $HOUR:25, $USERS  users,  load average: $LAVG "

