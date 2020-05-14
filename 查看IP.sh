#! /bin/bash 
# 查看本地IP, 此方法包含docker对应的IP
ifconfig | grep "inet " | grep -Fv "127.0.0.1" | awk '{print $2}' | sed 's/'addr:'//g'

# 上面的方法如果存在docker时,也会把docker的IP打印出来,使用ip命令获取真实的IP
([[ ! -z $(type -P ip) ]] && (ip route get 1 | awk '$7!="" {print $7}')) || (ifconfig | grep "inet " | grep -Fv "127.0.0.1" | awk '{print $2}' | sed 's/'addr:'//g')