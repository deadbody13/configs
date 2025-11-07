#!/bin/bash

#!/bin/bash

temp_raw=$(cat /sys/class/hwmon/hwmon2/temp1_input)
temp=$((temp_raw / 1000))

if [ "$temp" -ge 70 ]; then
    class="critical"
else
    class="normal"
fi

echo "{\"text\": \"${temp}\", \"class\": \"${class}\"}"
