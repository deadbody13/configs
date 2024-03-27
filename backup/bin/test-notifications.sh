#!/bin/bash

#!/bin/bash

# Function to send notification with given urgency level
send_notification() {
    urgency=$1
    message="Test notification with urgency: $urgency"
    notify-send -u "$urgency" "Notification Test" "$message"
}

# Test notifications with different urgency levels
send_notification "low"
sleep 2
send_notification "normal"
sleep 2
send_notification "critical"
