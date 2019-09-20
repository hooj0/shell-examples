#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-24
# copyright by hoojo@2018
# @changelog Added file preview `tac` shell command example



# =================================================================
#		patch —— 程序被用来把更改添加到文本文件中
# =================================================================
# 它接受从 diff 程序的输出，并且通常被用来 把较老的文件版本转变为较新的文件版本。
# -----------------------------------------------------------------



# =================================================================
# 示例：准备数据
# =================================================================
cat << EOF > file1.txt
a
b
c
d
EOF

cat << EOF > file2.txt
a
b
c
d
e
EOF

# output:
#-------------------------------------------------------------------
#


# =================================================================
# 示例：比较文件内容，将更改应用到新文件
# =================================================================
# 没有必要指定一个要修补的目标文件，因为 diff 文件（在统一模式中）已经在标题行中包含了文件名
diff -Naur file1.txt file2.txt > patchfile.txt

# patch 程序，应用这个补丁
patch < patchfile.txt

# 一旦应用了补丁，我们能看到，现在 file1.txt 与 file2.txt 文件相匹配了
cat file1.txt
cat file2.txt

# output:
#-------------------------------------------------------------------
#a
#b
#c
#d
#e









