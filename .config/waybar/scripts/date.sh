#!/bin/bash

weekday=$(date +%a)
day=$(date +%d)
month=$(date +%m)
year=$(date +%Y)

# Use literal \n inside the JSON output — NOT actual line breaks
text="$weekday\\n$day/$month\\n$year"

# Return JSON with "text" key
echo "{\"text\": \"$text\"}"
