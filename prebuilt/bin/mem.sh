#!/system/bin/sh

echo "Mem:
total: $(awk "BEGIN {print $(free | grep Mem | awk '{print $2}') / 1024}")
used: $(awk "BEGIN {print $(free | grep Mem | awk '{print $3}') / 1024}")
free: $(awk "BEGIN {print $(free | grep Mem | awk '{print $4}') / 1024}")
buffers: $(awk "BEGIN {print $(free | grep Mem | awk '{print $6}') / 1024}")

+/- buffers:
used: $(awk "BEGIN {print $(free | grep buffers: | awk '{print $3}') / 1024}")
free: $(awk "BEGIN {print $(free | grep buffers: | awk '{print $4}') / 1024}")

Swap:
total: $(awk "BEGIN {print $(free | grep Swap | awk '{print $2}') / 1024}")
used: $(awk "BEGIN {print $(free | grep Swap | awk '{print $3}') / 1024}")
free: $(awk "BEGIN {print $(free | grep Swap | awk '{print $4}') / 1024}")"
