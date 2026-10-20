#!/bin/bash

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print int(100 - $8)}')
THRESHOLD=80

# Display current CPU usage on screen
echo "Current CPU Usage: $CPU_USAGE%"

if [ "$CPU_USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: High CPU usage detected! Current usage: $CPU_USAGE%" | mailx -s "Alert: High CPU Usage" \
    -S smtp="smtps://smtp.gmail.com:465" \
    -S smtp-auth=login \
    -S smtp-auth-user="muqeemuddin199@gmail.com" \
    -S smtp-auth-password="vpye kxhu merj ggdd " \
    -S ssl-verify=ignore \
    muqeemuddin199@gmail.com

    echo "Email alert sent successfully!"
else
    echo "CPU usage is within the safe limit."
fi
