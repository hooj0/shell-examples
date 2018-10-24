#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-24
# copyright by hoojo@2018



# =================================================================
#		patch —— 程序被用来把更改添加到文本文件中
# =================================================================
# 它接受从 diff 程序的输出，并且通常被用来 把较老的文件版本转变为较新的文件版本。
# -----------------------------------------------------------------




# =================================================================
# 示例：比较文件内容，将更改应用到新文件
# =================================================================
diff -Naur file1.txt file2.txt > patchfile.txt

# patch 程序，应用这个补丁
patch < patchfile.txt

# 一旦应用了补丁，我们能看到，现在 file1.txt 与 file2.txt 文件相匹配了
cat file1.txt
cat file2.txt

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例2：
# =================================================================


# output:
#-------------------------------------------------------------------
#







read exits