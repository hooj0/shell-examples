#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-06-28
# copyright by hoojo @ 2018
# @changelog Added help document `whereis` shell command example




# ==============================================================================
#		whereis——显示可执行文件位置
# ==============================================================================
# whereis 查找可执行文件、源文件或者说明文档的位置，使用的是一个系统自动构建的数据库。
# ------------------------------------------------------------------------------
# 用法：whereis [-bfmsu] file
# 参数：
#
#   -b 　只查找二进制文件。
#   -B  <目录> 　只在设置的目录下查找二进制文件。
#   -f 　不显示文件名前的路径名称。
#   -m 　只查找说明文件。
#   -M  <目录> 　只在设置的目录下查找说明文件。
#   -s 　只查找原始代码文件。
#   -S  <目录> 　只在设置的目录下查找原始代码文件。
#   -u 　查找不包含指定类型的文件。
# ------------------------------------------------------------------------------




# ==============================================================================
# 示例：查看命令的所在位置
# ==============================================================================
whereis uname

# output:
#-------------------------------------------------------------------------------
# uname: /bin/uname /usr/share/man/man1/uname.1.gz /usr/share/man/man2/uname.2.gz


# ==============================================================================
# 示例：查看命令所在位置
# ==============================================================================
whereis bash

# output:
#-------------------------------------------------------------------------------
# bash: /bin/bash /etc/bash.bashrc /usr/share/man/man1/bash.1.gz







read exits