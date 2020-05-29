#! /bin/bash

sudo grep "CRON" /var/log/syslog | awk 'BEGIN {print "["} {printf "{\"time\": \"%s,%s ,%s\", \"user\": \"%s\", \"command\": \"", $1,$2,$3,$6;for(i=8;i<=NF;i++) printf $i""FS;print "\"},"} END {print "]"}' |sed 's/[\(\)]//g' | sed 'N;$s/,\n/\n/;P;D';