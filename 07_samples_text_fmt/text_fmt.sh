#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-12-11
# copyright by hoojo@2018
# @changelog Added text `fmt` shell command example



# =================================================================
#		fmt —— 简单的文本格式化工具
# =================================================================
# fmt 程序同样折叠文本，外加很多功能。
# 它接受文本或标准输入并且在文本流上呈现照片转换。
# 它主要是填充和连接文本行，同时保留空白符和缩进。
# -----------------------------------------------------------------
# 默认情况下，输出会保留空行，单词之间的空格，和缩进；
# 持续输入的具有不同缩进的文本行不会连接在一起；
# tab 字符在输入时会展开，输出时复原 。
# fmt 会保留第一行的缩进
# -----------------------------------------------------------------



# -----------------------------------------------------------------
#   准备工作
# -----------------------------------------------------------------
cat << EOF > example.txt
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
EOF


# =================================================================
# 示例：把 example.txt 格式化为 20 个字符的宽度
# =================================================================
cat example.txt | fmt -w 20

# output:
#-------------------------------------------------------------------
#Lorem ipsum
#dolor sit amet,
#consetetur
#sadipscing elitr,
#sed diam nonumy
#eirmod tempor
#invidunt ut labore
#et dolore magna
#aliquyam erat, sed
#diam voluptua. At
#vero eos et
#accusam et justo
#duo dolores et ea
#rebum. Stet clita
#kasd gubergren,
#no sea takimata
#sanctus est Lorem
#ipsum dolor sit
#amet.


# =================================================================
# 示例：两个宽度格式
# =================================================================
echo "ab abc" | fmt -w 2


# output:
#-------------------------------------------------------------------
# ab
# abc



# =================================================================
# 示例：格式化代码
# =================================================================
cat << EOF > fmt-code.txt
# This file contains code with comments.

# This line is a comment.
# Followed by another comment line.
# And another.

This, on the other hand, is a line of code.
And another line of code.
And another.
EOF

# 设置宽度 50 字符，段落分隔 p 字符
fmt -w 50 -p '# ' fmt-code.txt