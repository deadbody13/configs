#!/bin/bash

weekday=$(date +%a)
day=$(date +%d)
month=$(date +%b)
year=$(date +%Y)

# Use literal \n inside the JSON output — NOT actual line breaks
text="$weekday\\n$day\\n$month\\n$year"

# Return JSON with "text" key
echo "{\"text\": \"$text\"}"
