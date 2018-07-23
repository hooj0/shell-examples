#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-23
# copyright by hoojo@2018




# =================================================================
#		pstree —— 以一种优雅的方式展示进程树
# =================================================================
#  输出一个树型结构的进程列表，这个列表展示了进程间父/子关系。
# -----------------------------------------------------------------
# -----------------------------------------------------------------
# 其它与进程相关的命令
# =================================================================
# 命令名 	    命令描述
# -----------------------------------------------------------------
# vmstat 	输出一个系统资源使用快照，包括内存，交换分区和磁盘 I/O。
#           为了看到连续的显示结果，则在命令名后加上更新操作延时的时间（以秒为单位）。
#           例如，“vmstat 5”。 ，按下 Ctrl-c 组合键, 终止输出。
# -----------------------------------------------------------------
# xload 	一个图形界面程序，可以画出系统负载随时间变化的图形。
# -----------------------------------------------------------------
# tload 	与 xload 程序相似，但是在终端中画出图形。使用 Ctrl-c，来终止输出。
# -----------------------------------------------------------------




# =================================================================
#	 示例1：显示当前用户系统进程
# =================================================================
pstree

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例2：显示当前用户系统进程
# =================================================================
pstree -p

# output:
#-------------------------------------------------------------------
#




# =================================================================
#	 示例2：输出一个系统资源使用快照，每5秒更新一次
# =================================================================
vmstat 5

# output:
#-------------------------------------------------------------------
#



read exits