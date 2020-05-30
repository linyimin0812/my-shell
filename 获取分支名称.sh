#!/bin/bash

git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'

# 将其写成函数，放到PS1变量中，这样可以在进入git项目时，显示当前选中的分区