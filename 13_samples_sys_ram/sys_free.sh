#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-08-29
# copyright by hoojo@2018



# =================================================================
#		free —— 系统内存状态
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
#	 示例：查看内存 KB 单位
# =================================================================
free

# top 查看内存
top

# 通过proc虚拟文件系统，来直接获取总内存数
head /proc/meminfo

# 查看cpu数量
cat /proc/cpuinfo | grep processor

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例：查看内存 M 单位
# =================================================================
free -m

# output:
#-------------------------------------------------------------------
#


# =================================================================
#	 示例：查看内存 G 单位
# =================================================================
free -h

# 每 5 秒更新一次
free -b -s5

# 每 5 秒更新一次
free -hb -s5

# output:
#-------------------------------------------------------------------
#




read exits