#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-19
# copyright by hoojo@2018



# =================================================================
#		uniq —— 统计或精简重复的行
# =================================================================
# 当给定一个 排好序的文件（包括标准输出），uniq 会删除任意重复行，
# 并且把结果发送到标准输出。 它常常和 sort 程序一块使用，来清理重复的输出。
# =================================================================
# 常用的 uniq 选项
# -----------------------------------------------------------------
# 选项 	说明
# -----------------------------------------------------------------
# -c 	输出所有的重复行，并且每行开头显示重复的次数。
# -d 	只输出重复行，而不是特有的文本行。
# -f n 	忽略每行开头的 n 个字段，字段之间由空格分隔，正如 sort 程序中的空格分隔符；
#       然而， 不同于 sort 程序，uniq 没有选项来设置备用的字段分隔符。
# -i 	在比较文本行的时候忽略大小写。
# -s n 	跳过（忽略）每行开头的 n 个字符。
# -u 	只输出独有的文本行。这是默认的。
# -----------------------------------------------------------------




# -----------------------------------------------------------------
#   准备工作
# -----------------------------------------------------------------
cat << EOF > example.txt
a
a
b
a
b
c
d
c
EOF



# =================================================================
#	 示例1：输出 example.txt 中所有不重复的行(需要先进行排序, 否则相同行中间的行会被忽略)
# =================================================================
sort example.txt | uniq



# output:
#-------------------------------------------------------------------
#a
#b
#c
#d




# =================================================================
#	 示例2：输出去重后的所有行，并显示不重复行中每一行在原文件中的重复次数
# =================================================================
sort example.txt | uniq -c


# output:
#-------------------------------------------------------------------
#      3 a
#      2 b
#      2 c
#      1 d




# =================================================================
#	 示例：对文本文件做集合交、并、差运算
# =================================================================
sort a b | uniq > c   # c 是 a 并 b
sort a b | uniq -d > c   # c 是 a 交 b
sort a b b | uniq -u > c   # c 是 a - b


# output:
#-------------------------------------------------------------------
#




read exits