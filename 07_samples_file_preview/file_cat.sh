#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-09
# copyright by hoojo@2018



# =================================================================
#		cat——查看文件内容
# =================================================================
# 读取一个或多个文件，然后复制它们到标准输出。
#
# 在 UNIX 和 Linux 中，它有以下几种用途
#
# 把文本文件显示在屏幕上
# 复制文本文件
# 合并文本文件
# 创建新的文本文件
# -----------------------------------------------------------------
# 用法: cat [-nb] [FILE]...
#
# 选项参数：
#        -n      输出行号
#        -b      不包含空行
# -----------------------------------------------------------------




# =================================================================
#	 示例1：输出行号
# =================================================================
cat -b file_cat.sh




# =================================================================
#	 示例1：把文本文件显示在屏幕上
# =================================================================
cat a.txt

# output:
#-------------------------------------------------------------------
# 11111




# =================================================================
#	 示例2：把多个文件内容输出到屏幕
# =================================================================
cat a.txt b.txt

# output:
#-------------------------------------------------------------------
# 1111
# 2222




# =================================================================
#	 示例3：把多个文件内容输出到屏幕合并到一个文件
# =================================================================
cat a.txt b.txt > c.txt
cat c.txt

# output:
#-------------------------------------------------------------------
# 1111
# 2222



# =================================================================
#	 示例：合并多个文件切片，将其连接起来；
# 通配符总是以有序的方式展开，所以这些参数会以正确顺序安排
# =================================================================
cat movie.mpeg.0* > movie.mpeg



# =================================================================
#	 示例4：复制文件内容都新文件
# =================================================================
cat src.txt > dst.txt

# output:
#-------------------------------------------------------------------
# 1111




# =================================================================
#	 示例5：创建新的文本文件，复制文件
# =================================================================
cat < dst.txt > dst2.txt #copy dst to dst2

# output:
#-------------------------------------------------------------------
# 1111



# =================================================================
#	 示例：等待输入，从标准输入读入数据
# =================================================================
# 等待从键盘输入，输入 Ctrl-d 结束，完成后输入到屏幕
cat



# =================================================================
#	 示例：等待输入，从标准输入读入数据，并写入到文件
# =================================================================
# 等待从键盘输入，输入 Ctrl-d 结束，完成后输入到文件
cat > lazy-file.txt

# 查看文件内容
cat lazy-file.txt

# output:
#-------------------------------------------------------------------
#