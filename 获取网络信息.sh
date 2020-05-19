#! /bin/bash
# 获取网卡的上传和下载速度信息
cat /proc/net/dev | awk 'NR>2 {printf "{interface: %s, tx: %s, rx: %s}\n", $1, $2, $10}'