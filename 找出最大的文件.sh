#! /bin/bash 

#  查找当前目录下最大的10个文件(包含子目录内的文件)
find ./ -type f -exec du -k '{}' \; | sort -nrk 1 | head -n 10

# 找出当前目录下最大的10个文件(不包含子目录内的文件)
ls -lhS ./ | head -n 10