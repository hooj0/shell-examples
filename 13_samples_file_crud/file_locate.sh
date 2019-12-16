#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-09-12
# copyright by hoojo@2018
# @changelog Added file curd `locate` shell command example



# =================================================================
#		locate —— 通过名字来查找文件
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
# 示例：想要找到所有名字以“zip”开头的程序
# =================================================================
locate bin/zip

locate zip | grep bin

# output:
#-------------------------------------------------------------------
# 


# =================================================================
# 示例：查找 *.sh 结尾的文件
# =================================================================
locate *.sh

# output:
#-------------------------------------------------------------------
#


# =================================================================
# 示例：locate 程序支持基本的（--regexp 选项）和扩展的（--regex 选项）正则表达式
# =================================================================
# 搜索包含 bin/bz，bin/gz，或/bin/zip 字符串的路径名
locate --regex 'bin/(bz|gz|zip)'


# =================================================================
# 示例：查找 libpython3.7m.a 的文件
# =================================================================
locate libpython3.7m.a

# output:
#-------------------------------------------------------------------
# /usr/local/python3.7/Python-3.7.1/libpython3.7m.a
# /usr/local/python3.7/lib/libpython3.7m.a
# /usr/local/python3.7/lib/python3.7/config-3.7m-x86_64-linux-gnu/libpython3.7m.a
