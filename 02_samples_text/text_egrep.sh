#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-12-07
# copyright by hoojo@2018


# =================================================================
#		egrep —— 匹配指定字符串
# =================================================================
# 输出文件中匹配指定模式的行，是 grep 命令的扩展模式，支持更多正则表达式（等同于 grep -E）。
# -----------------------------------------------------------------


# -----------------------------------------------------------------
# 准备工作
# -----------------------------------------------------------------
cat << EOF > example.txt
Lorem ipsum
dolor sit amet,
consetetur
sadipscing elitr,
sed diam nonumy
eirmod tempor
invidunt ut labore
et dolore magna
aliquyam erat, sed
diam voluptua. At
vero eos et
accusam et justo
duo dolores et ea
rebum. Stet clita
kasd gubergren,
no sea takimata
sanctus est Lorem
ipsum dolor sit
amet.
EOF


# =================================================================
#	 示例1：输出包含 Lorem 或 dolor 的行
# =================================================================
egrep '(Lorem|dolor)' example.txt

# or
grep -E '(Lorem|dolor)' example.txt

# output:
#-------------------------------------------------------------------
# Lorem ipsum
# dolor sit amet,
# et dolore magna
# duo dolores et ea
# sanctus est Lorem
# ipsum dolor sit


# =================================================================
#	 示例：统计一个字符串出现次数。
#   假设你有一个类似于 web 服务器日志文件的文本文件，并且一个确定的值只会出现在某些行上，
#   假设一个 acct_id 参数在 URI 中。
#   如果你想计算出每个 acct_id 值有多少次请求，使用如下代码
# =================================================================
egrep -o 'acct_id=[0-9]+' access.log | cut -d= -f2 | sort | uniq -c | sort -rn


# output:
#-------------------------------------------------------------------
#


# =================================================================
#	 示例：统计有/usr/开头字符串出现次数。
# =================================================================
egrep -o '/usr/[a-z]+' /etc/passwd | cut -d= -f2 | sort | uniq -c | sort -rn


# output:
#-------------------------------------------------------------------
#     17 /usr/sbin
#      1 /usr/games




read exits