#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-12-11
# copyright by hoojo@2018
# @changelog Added text `look` shell command example



# =================================================================
#		look —— 查找以特定字符串开头的单词或行
# =================================================================
# look [-adf][-t<字尾字符串>][字首字符串][字典文件]
# -----------------------------------------------------------------
# -a 使用另一个字典文件web2，该文件也位于/usr/dict目录下。
# -d 只对比英文字母和数字，其余一慨忽略不予比对。
# -f 忽略字符大小写差别。
# -t <字尾字符串> 设置字尾字符串。
# -----------------------------------------------------------------



# -----------------------------------------------------------------
# 准备工作
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
# 示例：匹配 sed 开头的行
# =================================================================
look "sed" example.txt

# output:
#-------------------------------------------------------------------
#sed diam nonumy eirmod tempor
#sed diam voluptua.



# =================================================================
# 示例：匹配 bin 开头的行
# =================================================================
look "bin" /etc/passwd

# 忽略大小写
look -f "BIN" /etc/passwd

# 只对比英文字母和数字，其余一慨忽略不予比对
look -d /etc/passwd

# output:
#-------------------------------------------------------------------
# bin:x:2:2:bin:/bin:/usr/sbin/nologin









read exits