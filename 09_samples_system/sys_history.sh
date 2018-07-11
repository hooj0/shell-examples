#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-11
# copyright by hoojo@2018



# =================================================================
#		history —— 查看历史输入执行的命令行
# =================================================================
#  bash 维护着一个已经执行过的命令的历史列表，这个列表文件存储在当前用户目录下。
#  通过执行 less ~/.bash_history 可以查看历史命令记录
#
#  利用history 可以减少之前命令的再次输入，
#  在默认情况下，bash 会存储你所输入的最后 500 个命令
# -----------------------------------------------------------------
# 启动递增搜索， 输入 Ctrl-r，其后输入你要寻找的文本。
# 当你找到它以后，你可以敲入 Enter 来执行命令，
# 或者输入 Ctrl-j，从历史列表中复制这一行到当前命令行。
# 再次输入 Ctrl-r，来找到下一个 匹配项（向上移动历史列表）。
# 输入 Ctrl-g 或者 Ctrl-c，退出搜索。
# -----------------------------------------------------------------
# !n        n 代表行数，可以执行某一行的历史命令
# !$        它用于指代上次键入的参数
# !!        可以指代上次键入的命令
# !string 	重复最近历史列表中，以这个字符串开头的命令。
# !?string 	重复最近历史列表中，包含这个字符串的命令。
# -----------------------------------------------------------------
#   历史命令快捷键
# -----------------------------------------------------------------
#   按键 	            行为
#   Ctrl-p 	    移动到上一个历史条目。类似于上箭头按键。
#   Ctrl-n 	    移动到下一个历史条目。类似于下箭头按键。
#   Alt-< 	    移动到历史列表开头。
#   Alt-> 	    移动到历史列表结尾，即当前命令行。
#   Ctrl-r  	反向递增搜索。从当前命令行开始，向上递增搜索。
#   Alt-p 	    反向搜索，不是递增顺序。输入要查找的字符串，然后按下 Enter，执行搜索。
#   Alt-n 	    向前搜索，非递增顺序。
#   Ctrl-o 	    执行历史列表中的当前项，并移到下一个。如果你想要执行历史列表中一系列的命令，这很方便。
# -----------------------------------------------------------------



# =================================================================
#	 示例：查看历史命令
# =================================================================
history | less

# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例1：查看所有历史命令
# =================================================================
history

# output:
#-------------------------------------------------------------------
#  504  type cd
#  505  man wget
#  506  apropos
#  507  help
#  508  ls -l
#  509  du -hs *
#  510  ls -i


# =================================================================
#	 示例2：执行指定行的历史命令
# =================================================================
# 会执行 上面的 508 行的命令
!508

# 执行 le 开头的最近的历史命令
!le

# 执行包含 le 的最近的历史命令
!?le

# 执行上一条历史命令
!!

# output:
#-------------------------------------------------------------------
#







read exits