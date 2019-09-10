#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   ${DATE}
# copyright by hoojo@2020
# @changelog Added cmd `timeout` shell command example




# =================================================================
#		timeout —— 在指定时长范围内执行命令，并在规定时间结束后停止进程
# =================================================================
# 用法：timeout [选项] 停留时间 命令 [参数]...
#　 或：timeout 选项
# -----------------------------------------------------------------




# =================================================================
# 示例：lsof 查看系统文件，在3秒内结束
# =================================================================
timeout 3 lsof

# output:
#-------------------------------------------------------------------
#
#real	0m0.315s
#user	0m0.228s
#sys	0m0.068s


# =================================================================
# 示例：
# =================================================================


# output:
#-------------------------------------------------------------------
#







read exits