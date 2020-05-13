#! /bin/bash 
# 查看本地IP, 此方法包含docker对应的IP
ifconfig | grep "inet " | grep -Fv "127.0.0.1" | awk '{print $2}' | sed 's/'addr:'//g'