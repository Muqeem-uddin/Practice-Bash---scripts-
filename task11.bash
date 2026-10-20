#!/bin/bash

# Root directory (/) ka disk usage percentage mein nikalna
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
THRESHOLD=80

# Display current Disk usage on screen
echo "Current Disk Usage: $DISK_USAGE%"

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: High Disk usage detected! Current usage: $DISK_USAGE%" | mailx -s "Alert: High Disk Usage" \
    -S smtp="smtps://smtp.gmail.com:465" \
    -S smtp-auth=login \
    -S smtp-auth-user="muqeemuddin199@gmail.com" \
    -S smtp-auth-password="vpye kxhu merj ggdd " \
    -S ssl-verify=ignore \
    muqeemuddin199@gmail.com

    echo "Email alert sent successfully!"
else
    echo "Disk usage is within the safe limit."
fi
