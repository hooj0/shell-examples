#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-06-28
# copyright by hoojo @ 2018
# @changelog Added shell quick started example




# =================================================================
# man 命令去阅读文档，查看手册
# info 查看帮助手册
# type 判断这个命令到底是可执行文件、shell 内置命令还是别名
# help -d 帮助手册
# apropos 搜索相关的命令或可执行文件的文档
# =================================================================



# =================================================================
# 示例： 查看手册
# =================================================================
man wget
man curl
man cd
man sh



# =================================================================
# 示例： 帮助手册
# =================================================================
help
help -d

wget --help



# =================================================================
# 示例： 帮助手册
# =================================================================
info wget



# =================================================================
# 示例： 查找相关命令
# =================================================================
apropos ping # 查找包含ping字符串的命令
apropos curl # 查找包含curl字符串的命令



# =================================================================
# 示例： 别名命令
# =================================================================
type ll

# output:
#------------------------------------------------------------------
# ll is aliased to `ls -l'



# =================================================================
# 示例：内置命令
# =================================================================
type cd


# output:
#------------------------------------------------------------------
# cd is a shell builtin




# =================================================================
# 示例：可执行命令
# =================================================================
type ping

# output:
#------------------------------------------------------------------
# ping is /bin/ping


