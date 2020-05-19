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

[cat /proc/net/dev | awk 'NR>2 {printf "{interface: %s, tx: %s, rx: %s}\n", $1, $2, $10}'](获取网络信息.sh)