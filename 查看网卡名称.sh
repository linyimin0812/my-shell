#! /bin/bash
# 获取当前使用的网卡名称
ip route get 1 | awk '$5!="" {print $5}'