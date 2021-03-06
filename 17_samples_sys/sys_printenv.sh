#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-23
# copyright by hoojo@2018
# @changelog Added sys `printenv` shell command example



# =================================================================
#		printenv —— 打印环境变量（调试时或在写脚本文件时很有用）
# =================================================================
# printenv 命令 可以打印部分或所有的环境变量
# -----------------------------------------------------------------
# set 命令 可以显示 shell变量 或 环境变量
#   当使用没有带选项和参数的 set 命令时，shell 变量，环境变量，和定义的 shell 函数 都会被显示。
#   不同于 printenv 命令，set 命令的输出很友好地按照首字母顺序排列
# -----------------------------------------------------------------
#
#       常用的环境变量
# =================================================================
#  变量 	内容
# -----------------------------------------------------------------
# DISPLAY 	如果你正在运行图形界面环境，那么这个变量就是你显示器的名字。
#           通常，它是 ":0"， 意思是由 X 产生的第一个显示器。
# -----------------------------------------------------------------
# EDITOR 	文本编辑器的名字。
# SHELL 	shell 程序的名字。
# HOME 	    用户家目录。
# LANG 	    定义了字符集以及语言编码方式。
# OLD_PWD 	先前的工作目录。
# PAGER 	页输出程序的名字。这经常设置为/usr/bin/less。
# PATH 	    由冒号分开的目录列表，当你输入可执行程序名后，会搜索这个目录列表。
# -----------------------------------------------------------------
# PS1 	    Prompt String 1. 这个定义了你的 shell 提示符的内容。
#           随后我们可以看到，这个变量 内容可以全面地定制。
# -----------------------------------------------------------------
# PWD 	    当前工作目录。
# -----------------------------------------------------------------
# TERM 	    终端类型名。类 Unix 的系统支持许多终端协议；
#           这个变量设置你的终端仿真器所用的协议。
# -----------------------------------------------------------------
# TZ 	    指定你所在的时区。大多数类 Unix 的系统按照协调时间时 (UTC) 来维护计算机内部的时钟，
#           然后应用一个由这个变量指定的偏差来显示本地时间。
# -----------------------------------------------------------------
# USER 	    你的用户名
# -----------------------------------------------------------------




# =================================================================
# 示例：查看所有环境变量
# =================================================================
# 直接打印到控制台
printenv

# 以less的方式查看
printenv | less

# output:
#-------------------------------------------------------------------
# 


# =================================================================
# 示例：查看 “某个特定” 的环境变量
# =================================================================
# 查看PATH 环境变量
printenv PATH

# USER 环境变量
printenv USER

# PWD 环境变量
printenv PWD


set

# output:
#-------------------------------------------------------------------
# /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/local/mysql/bin:/usr/local/go/bin:/opt/fabric-samples/bin:/root/bin
#
# root
# /root




# =================================================================
# 示例：set 方式查看环境变量
# =================================================================
# 查看所有变量
set | less

# 查找某个特定变量
set | grep HOME

# 输出变量
echo $HOME

# output:
#-------------------------------------------------------------------
# HOME=/root
# /root


read exits