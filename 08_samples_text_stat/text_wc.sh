#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-19
# copyright by hoojo@2018
# @changelog Added text `wc` shell command example



# =================================================================
#		wc —— 输出文件中的行、单词、字符个数。
# =================================================================
# -c或--bytes或--chars    只显示Bytes数。
# -l或--lines            只显示行数。
# - w或--words            只显示字数。
# -----------------------------------------------------------------



# -----------------------------------------------------------------
#   准备工作
# -----------------------------------------------------------------
cat << EOF > example.txt
Lorem ipsum dolor sit amet,
consetetur sadipscing elitr,
sed diam nonumy eirmod tempor
invidunt ut labore et dolore magna aliquyam erat,
sed diam voluptua.
At vero eos et accusam et justo duo dolores et ea rebum.
Stet clita kasd gubergren,
no sea takimata sanctus est Lorem ipsum dolor sit amet.
EOF



# =================================================================
# 示例：统计文件中的行、单词、字符个数
# =================================================================
wc example.txt

# 一次统计多个文件
wc example.txt example2.txt example3.txt

# output:
#-------------------------------------------------------------------
# 8  50 296 example.txt


# =================================================================
# 示例：统计行数
# =================================================================
wc -l example.txt

# output:
#-------------------------------------------------------------------
# 8 example.txt






read exits