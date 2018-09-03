#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-18
# copyright by hoojo@2018



# =================================================================
#		passwd —— 让当前登录的用户更改他的密码
# =================================================================
# 超级用户用passwd 来设置或更改用户密码，普通用户也可以自己修改密码
# passwd 命令选项对超级用户有效，允许帐号锁定，密码失效
#
# passwd 命令将会试着强迫你使用“强”密码。
# 这意味着它会拒绝接受太短的密码、与先前相似的密码、 字典中的单词
# 作为密码或者是太容易猜到的密码
# -----------------------------------------------------------------




# =================================================================
#	 示例1：输入 passwd 命令，更改密码
#           shell 会提示你输入你的旧密码和你的新密码：
# =================================================================
passwd

# output:
#-------------------------------------------------------------------
# 输入新的 UNIX 密码：
# 重新输入新的 UNIX 密码：


# =================================================================
#	 示例2：在/etc/passwd文件中，储存本地用户信息，查看系统上所有用户账户
# =================================================================
cat /etc/passwd

# account:password:UID:GID:GECOS:directory:shell
#-------------------------------------------------------------------
#account：用户名，不能为空，而且要符合标准的*NIX命名规则。
#password：加密的密码，可以使用一个小写的"x"（不带括号）表示密码保存在/etc/shadow文件里。
#UID GID：每个用户和组有一个对应的UID和GID（用户ID和组ID）。Arch里面，第一个非root用户的默认UID是1000，后续创建的用户UID也应大于1000，特定用户的GID应该属于指定的首要组，组的ID数值列在/etc/group文件里。
#GECOS：可选的注释字段，通常记录用户全名
#directory：用于登录命令设置$HOME环境变量。某些服务的用户主目录设置为"/"是安全的，但不建议普通用户设置为此目录。
#shell：是用户默认登录的shell，通常是Bash，还可选择其他的命令解释器，默认是"/bin/bash"（不带括号），如果你用的是别的shell，在这里设置其路径，此部分是可选的，可留空

# output:
#-------------------------------------------------------------------
#示例分解说明：
# 用户登录名为jack，密码保存在/etc/shadow，UID为1001，首要组的ID是100 (users组)，
# 全名Jack Smith并加了一些注释，主目录是/home/jack，使用Bash作为默认shell。
#jack:x:1001:100:Jack Smith,some comment here,,:/home/jack:/bin/bash







read exits