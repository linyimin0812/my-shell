# 找到占用80端口的进程PID,然后关闭
sudo lsof -i :80 | awk 'NR!=1 {print $2}' | xargs sudo kill -9