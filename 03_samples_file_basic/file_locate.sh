#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-09-12
# copyright by hoojo@2018


# =================================================================
#		locate —— 通过名字来查找文件
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
#	 示例：想要找到所有名字以“zip”开头的程序
# =================================================================
locate bin/zip

locate zip | grep bin

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例：查找 *.sh 结尾的文件
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


