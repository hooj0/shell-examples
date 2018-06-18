#!/bin/sh

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
#	 示例2：
# =================================================================


# output:
#-------------------------------------------------------------------
#







read exits