#!/system/bin/sh

for a in $(ls /sys/kernel/mm/ksm | grep -Ev 'pages_to_scan|run|sleep_millisecs')
  do
     echo "$a: $(cat /sys/kernel/mm/ksm/$a)"
  done
