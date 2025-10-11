
#!/bin/bash

# Detect battery device automatically
BAT=$(ls /sys/class/power_supply/ | grep -E '^BAT' | head -n1)
if [ -z "$BAT" ]; then
    echo '{"text": "", "percentage": 0, "alt": "discharging"}'
    exit 0
fi

# Read battery percentage and status
PERC=$(cat /sys/class/power_supply/$BAT/capacity)
STATUS=$(cat /sys/class/power_supply/$BAT/status)  # Charging, Discharging, Full

# Normalize status to lowercase for Waybar
STATUS=$(echo "$STATUS" | tr '[:upper:]' '[:lower:]')

# Output JSON for Waybar
echo "{\"text\": \"\", \"percentage\": $PERC, \"alt\": \"$STATUS\"}"


