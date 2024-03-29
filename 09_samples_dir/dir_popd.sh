#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-19
# copyright by hoojo@2018
# @changelog Added dir `popd` shell command example



# =================================================================
#		popd —— 用于删除目录栈中的记录，并切换目录
# =================================================================
#  popd 用于删除目录栈中的记录；如果popd命令不加任何参数，
#  则会先删除目录栈最上面的记录，然后切换到删除过后的目录栈中的最上面的目录
# -----------------------------------------------------------------
# 语法格式：
# 		popd  [-N | +N]   [-n]
# 选项
#	+N   	将第N个目录删除（从左边数起，数字从0开始）
#	-N    	将第N个目录删除（从右边数起，数字从0开始）
#	-n    	将目录出栈时，不切换目录
# -----------------------------------------------------------------




# =================================================================
# 示例：删除目录栈中的记录，并切换删除后栈中第一个目录
# =================================================================
popd

pwd
# /d

# output:
#-------------------------------------------------------------------
# /d /d ~ /d/GoPath/src /d/GoPath/src/github.com


# =================================================================
# 示例： 将第N个目录删除（从左边数起，数字从0开始）
# =================================================================
popd +1

# output:
#-------------------------------------------------------------------
# /d ~ /d/GoPath/src /d/GoPath/src/github.com




# =================================================================
# 示例： 将第N个目录删除（从右边数起，数字从0开始）
# =================================================================
popd -1

# output:
#-------------------------------------------------------------------
# /d ~ /d/GoPath/src/github.com



# =================================================================
# 示例： 将目录出栈时，不切换目录
# =================================================================
popd -n

# output:
#-------------------------------------------------------------------
#



read exits