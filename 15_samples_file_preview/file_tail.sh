#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-09
# copyright by hoojo@2018



# =================================================================
#		tail —— 查看最后N行
# =================================================================
# tail 命令默认打印文件的后十行。
# tail -n file 输出文件的最后 N 行。
# tail -f file 可以动态输出文件新添加的文本。
# -----------------------------------------------------------------




# =================================================================
#	 示例1：查看文件最后5行
# =================================================================
tail -5 file.txt

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例2：显示最后10行
# =================================================================
tail ls-file.txt

# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：动态显示文件内容，实时地浏览文件，用于查看log极其方便
# =================================================================
tail -f log.txt

# output:
#-------------------------------------------------------------------
#


read exits