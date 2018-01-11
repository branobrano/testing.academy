#!/bin/bash

TIME=$(date +%T)
LAVG=$(cat /proc/loadavg | cut -d" " -f1,2,3)
UPTIME=$(cat /proc/uptime | cut -d" " -f1 | cut -d"." -f1)

DAYS=$(echo "($UPTIME/60/60/24)" | bc)
HOURS=$(echo "($UPTIME/60/60%24)" | bc)
MINS=$(echo "($UPTIME/60)%60" | bc)
SECS=$(echo "$UPTIME%60" | bc)

USERS=$(who | wc -l)

echo "$TIME up $DAYS days, : $HOURS:$MINS:$SECS, $USERS  users,  load average: $LAVG "


