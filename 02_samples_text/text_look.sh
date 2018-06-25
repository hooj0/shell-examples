#!/bin/sh

# =================================================================
#		look —— 查找以特定字符串开头的单词或行
# =================================================================
# 
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
#	 示例：
# =================================================================
look "sed" example.txt

# output:
#-------------------------------------------------------------------
#sed diam nonumy eirmod tempor
#sed diam voluptua.



# =================================================================
#	 示例：
# =================================================================
look "bin" /etc/passwd


# output:
#-------------------------------------------------------------------
# bin:x:2:2:bin:/bin:/usr/sbin/nologin







read exits