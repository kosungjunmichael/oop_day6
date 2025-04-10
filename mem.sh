#!/bin/bash

# Extract memory usage (used and total) using 'free' and 'awk'
used=$(free -m | awk '/Mem:/ {print $3}')
total=$(free -m | awk '/Mem:/ {print $2}')

echo "Memory Usage: $used MB / $total MB"
