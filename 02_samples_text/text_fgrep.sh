#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-12-07
# copyright by hoojo@2018



# =================================================================
#		fgrep —— 查找包含指定字符串的行
# =================================================================
# 输出文件中包含给定字符串的行，指定的模式将不被认做正则，而是字符串。（等同于：grep -F）
# -----------------------------------------------------------------




# =================================================================
# 示例：输出在 example.txt 中包含字符串 (Lorem|dolor) 的所有行
# =================================================================
fgrep 'consetetur' example.txt

# or
grep -F 'consetetur' example.txt


# output:
#-------------------------------------------------------------------
# consetetur


# =================================================================
# 示例：
# =================================================================


# output:
#-------------------------------------------------------------------
#







read exits