#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-31
# copyright by hoojo@2018
# @changelog Added text `aspell` shell command example



# =================================================================
#       aspell —— 拼写检查
# =================================================================
# aspell，一款交互式的拼写检查器
#
#   语法：aspell check textfile
# -----------------------------------------------------------------




# =================================================================
# 示例：检查文件拼写
# =================================================================
# aspell 在检查模式下是交互的，我们将看到像这样的一个屏幕
# 文本中有一个拼写可疑且高亮显示的单词
aspell check foo.txt

# output:
#-------------------------------------------------------------------
# The quick brown fox jimped over the laxy dog.
#1)jumped                        6)wimped
#2)gimped                        7)camped
#3)comped                        8)humped
#4)limped                        9)impede
#5)pimped                        0)umped
#i)Ignore                        I)Ignore all
#r)Replace                       R)Replace all
#a)Add                           l)Add Lower
#b)Abort                         x)Exit
#?


# =================================================================
# 示例：html 文件检查拼写
# =================================================================
aspell -H check foo.html

# output:
#-------------------------------------------------------------------
#






