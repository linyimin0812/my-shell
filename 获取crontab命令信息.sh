#! /bin/bash

sudo grep "CRON" /var/log/syslog | awk 'BEGIN {print "["} {printf "time: %s %s %s, user: %s, commnad: %s,\n", $1,$2,$3, $6, $8;} END {print "]"}'