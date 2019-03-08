#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-31
# copyright by hoojo@2018



# =================================================================
#		nl —— 给文件添加行号并输出
# =================================================================
# 它添加文件的行数。在它最简单的用途中，它相当于 cat -n
# =================================================================
# nl 标记
# -----------------------------------------------------------------
# 标记 	    含义
# -----------------------------------------------------------------
# \:\:\: 	逻辑页页眉开始处
# \:\: 	    逻辑页主体开始处
# \: 	    逻辑页页脚开始处
# -----------------------------------------------------------------
# 常用 nl 选项
# =================================================================
# 选项 	含义
# -----------------------------------------------------------------
# -b style 	把 body 按被要求方式数行，可以是以下方式：
#           a = 数所有行
#           t = 数非空行。这是默认设置。
#           n = 无
#           pregexp = 只数那些匹配了正则表达式的行
# -----------------------------------------------------------------
# -f style 	    将 footer 按被要求设置数。默认是无
# -h style 	    将 header 按被要求设置数。默认是
# -i number 	将页面增加量设置为数字。默认是一。
# -----------------------------------------------------------------
# -n format 	设置数数的格式，格式可以是：
#               ln = 左偏，没有前导零。
#               rn = 右偏，没有前导零。
#               rz = 右偏，有前导零。
# -----------------------------------------------------------------
# -p 	        不要在没一个逻辑页面的开始重设页面数。
# -s string 	在没一个行的末尾加字符作分割符号。默认是单个的 tab。
# -v number 	将每一个逻辑页面的第一行设置成数字。默认是一。
# -w width 	    将行数的宽度设置，默认是六。
# -----------------------------------------------------------------



# -----------------------------------------------------------------
# 准备工作
# -----------------------------------------------------------------
cat example.txt | fmt -w 20 > example.txt

# =================================================================
# 示例：给 example.txt 中的内容添加行号并输出
# =================================================================
nl -s "." example.txt

# output:
#-------------------------------------------------------------------
#     1.Lorem ipsum
#     2.dolor sit amet,
#     3.consetetur
#     4.sadipscing elitr,
#     5.sed diam nonumy
#     6.eirmod tempor
#     7.invidunt ut labore
#     8.et dolore magna
#     9.aliquyam erat, sed
#    10.diam voluptua. At
#    11.vero eos et
#    12.accusam et justo
#    13.duo dolores et ea
#    14.rebum. Stet clita
#    15.kasd gubergren,
#    16.no sea takimata
#    17.sanctus est Lorem
#    18.ipsum dolor sit
#    19.amet.


# =================================================================
# 示例：显示文本的行号
# =================================================================
nl distros.txt | head


# =================================================================
# 示例：执行脚本，导出特定格式报表
# =================================================================
cat << EOF > distros-nl.sed
# sed script to produce Linux distributions report
1 i\
\\:\\:\\:\
\
Linux Distributions Report\
\
Name
Ver. Released\
----
---- --------\
\\:\\:
s/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)$/\3-\1-\2/
$ i\
\\:\
\
End Of Report
EOF


sort -k 1,1 -k 2n distros.txt | sed -f distros-nl.sed | nl


# output:
#-------------------------------------------------------------------
#Linux Distributions Report
#        Name    Ver.    Released
#        ----    ----    --------
#    1   Fedora  5       2006-03-20
#    2   Fedora  6       2006-10-24
#    3   Fedora  7       2007-05-31
#    4   Fedora  8       2007-11-08
#    5   Fedora  9       2008-05-13
#    6   Fedora  10      2008-11-25


# =================================================================
# 示例：其他选项使用
# =================================================================
nl -n rz

# 设置宽度 3 个空格字符
nl -w 3 -s ' '