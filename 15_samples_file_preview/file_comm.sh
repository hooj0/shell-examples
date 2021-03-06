#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-23
# copyright by hoojo@2018
# @changelog Added file preview `cat` shell command example



# =================================================================
#		comm —— 一行一行的比较排序过的文件
# =================================================================
# 比较两个文本文件，并且会显示每个文件特有的文本行和共有的文把行
# -----------------------------------------------------------------




# =================================================================
# 示例：准备文件资源
# =================================================================
cat > file1.txt

# output:
#-------------------------------------------------------------------
#a
#b
#c
#d

cat > file2.txt

# output:
#-------------------------------------------------------------------
#b
#c
#d
#e


# =================================================================
# 示例： comm 命令来比较这两个文件，comm 命令产生了三列输出：
#   第一列包含第一个文件独有的文本行；
#   第二列， 文本行是第二列独有的；
#   第三列包含两个文件共有的文本行。
# =================================================================
comm file1.txt file2.txt

# output:
#-------------------------------------------------------------------
#a
#        b
#        c
#        d
#    e




# =================================================================
# 示例：comm 支持 -n 形式的选项，这里 n 代表 1，2 或 3。
# 这些选项使用的时候，指定了要隐藏的列。
# =================================================================
comm -12 file1.txt file2.txt


# output:
#-------------------------------------------------------------------
#b
#c
#d

