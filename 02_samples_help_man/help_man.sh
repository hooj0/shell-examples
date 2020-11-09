#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-04
# copyright by hoojo@2018
# @changelog Added help document `man` shell command example



# =============================================================================
#		man —— 输出特定命令的使用手册
# =============================================================================
# 手册文档的格式一般地包含一个标题、命令语法、命令用途、 以及每个命令选项的列表和说明。
# 然而，手册文档通常并不包含实例，它打算 作为一本参考手册，而不是教程。
# 在大多数 Linux 系统中，man 使用 less 工具来显示参考手
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# 手册页的组织形式
# -----------------------------------------------------------------------------
#   章节 	  内容
#   1 	    用户命令
#   2 	    程序接口内核系统调用
#   3 	    C 库函数程序接口
#   4 	    特殊文件，比如说设备结点和驱动程序
#   5 	    文件格式
#   6 	    游戏娱乐，如屏幕保护程序
#   7 	    其他方面
#   8 	    系统管理员命令
# -----------------------------------------------------------------------------




# =============================================================================
# 示例：查看last 命令手册
# =============================================================================
man last

# output:
#------------------------------------------------------------------------------
# 


# =============================================================================
# 示例：查看命令手册的具体章节 man section search_term
# =============================================================================
# 查看 passwd 命令 5 章节 手册文档
man 5 passwd

# output:
#------------------------------------------------------------------------------
#







read exits