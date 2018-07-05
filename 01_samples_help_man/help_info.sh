#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-05
# copyright by hoojo@2018



# =================================================================
#       info —— 显示程序 Info 手册信息
# =================================================================
# info 程序读取 info 文件，info 文件是树型结构，分化为各个结点，每一个包含一个题目。
# 许多安装在系统中的软件，都有自己的文档文件，这些文件位于/usr/share/doc 目录下。
# -----------------------------------------------------------------
# info 命令
#
#   命令 	                行为
# -----------------------------------------------------------------
#   ? 	                显示命令帮助
#   PgUp or Backspace 	显示上一页
#   PgDn or Space 	    显示下一页
#   n 	                下一个 - 显示下一个结点
#   p 	                上一个 - 显示上一个结点
#   u 	                Up - 显示当前所显示结点的父结点，通常是个菜单
#   Enter 	            激活光标位置下的超级链接
#   q 	                退出
# -----------------------------------------------------------------




# =================================================================
#	 示例： 查看 coreutils 包的命令手册
# =================================================================
info coreutils

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例： 查看 curl 命令手册
# =================================================================
info curl

# output:
#-------------------------------------------------------------------
#







read exits