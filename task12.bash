#!/bin/bash

# Memory usage percentage mein nikalna
MEMORY_USAGE=$(free | grep Mem | awk '{print int($3/$2 * 100)}')
THRESHOLD=80

# Display current Memory usage on screen
echo "Current Memory Usage: $MEMORY_USAGE%"

if [ "$MEMORY_USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: High Memory usage detected! Current usage: $MEMORY_USAGE%" | mailx -s "Alert: High Memory Usage" \
    -S smtp="smtps://smtp.gmail.com:465" \
    -S smtp-auth=login \
    -S smtp-auth-user="muqeemuddin199@gmail.com" \
    -S smtp-auth-password="vpye kxhu merj ggdd " \
    -S ssl-verify=ignore \
    muqeemuddin199@gmail.com

    echo "Email alert sent successfully!"
else
    echo "Memory usage is within the safe limit."
fi
