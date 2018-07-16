#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-16
# copyright by hoojo@2018




# =================================================================
#		su —— 切换用户
# =================================================================
# su 命令用来以另一个用户的身份来启动 shell。
# -----------------------------------------------------------------
# 语法：
#     su [-[l]] [user]
#
#   su -l
# -----------------------------------------------------------------



# =================================================================
#	 示例：切换到超级用户，并进行登录，且工作目录为 超级用户 的HOME目录
# 提示符的末尾字符是”#”而不是”$”
# =================================================================
su -l
# 缩写形式
su -

# 退出当前用户
# exit

# output:
#-------------------------------------------------------------------
# Password:



# =================================================================
#	 示例：切换用户
# =================================================================
su docker

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例： 切换用户
# =================================================================
su vagrant

# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：执行单个非交互式命令: su -c 'command'
# =================================================================
su -c 'ls /usr/bin'

# output:
#-------------------------------------------------------------------
#



read exits