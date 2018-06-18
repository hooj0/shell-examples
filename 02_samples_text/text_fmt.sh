#!/bin/sh

# =================================================================
#		fmt —— 简单的文本格式化工具
# =================================================================
# 
# -----------------------------------------------------------------



# -----------------------------------------------------------------
#   准备工作
# -----------------------------------------------------------------
cat << EOF > example.txt
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
EOF


# =================================================================
#	 示例1：把 example.txt 格式化为 20 个字符的宽度
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
#	 示例2：
# =================================================================
echo "ab abc" | fmt -w 2


# output:
#-------------------------------------------------------------------
# ab
# abc







read exits