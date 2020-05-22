#! /bin/bash

sudo lsof -i -P -n | grep "LISTEN" | awk '{print $9}' | cut -d ":" -f 2 | sort -nu