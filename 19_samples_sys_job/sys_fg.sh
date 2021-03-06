#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-20
# copyright by hoojo@2018
# @changelog Added sys job `bg` shell command example



# =================================================================
#		fg —— 输出前台中最近运行的任务，恢复程序到前台运行
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
# 示例：使用 fg 命令，可以恢复程序到前台运行
# =================================================================
fg


# output:
#-------------------------------------------------------------------
# 


# =================================================================
# 示例：fg 命令之后，跟随着一个百分号和任务序号（叫做 jobspec）就可以了
#      如果我们只有一个后台任务，那么 jobspec 是可有可无的。
# =================================================================
fg %1

# output:
#-------------------------------------------------------------------
#







read exits