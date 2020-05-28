# my-shell
工作中常用的shell脚本

## 关闭执行端口进程

[sudo lsof -i :80 | awk 'NR!=1 {print $2}' | xargs sudo kill -9](关闭指定端口进程.sh)

## 查看本地IP

[ifconfig | grep "inet " | grep -Fv "127.0.0.1" | awk '{print $2}' | sed 's/'addr:'//g'](查看IP.sh)

## 查看当前使用的网卡名称

[ip route get 1 | awk '$5!="" {print $5}'](查看网卡名称.sh)

## 找出最大的文件

[ls -lhS ./ | head -n 10](找出最大的文件.sh)

## 获取网卡的上传和下载速度信息

[cat /proc/net/dev | sed 's/://' | awk 'NR>2 {printf "{interface: %s, rx: %s, tx: %s}\n", $1, $2, $10}'](获取网络信息.sh)

## 获取所有使用的端口

[sudo lsof -i -P -n | grep "LISTEN" | awk '{print $9}' | cut -d ":" -f 2 | sort -nu](获取全部使用的端口.sh)

## 获取执行的crontab命令

[sudo grep "CRON" /var/log/syslog](获取crontab命令信息.sh)