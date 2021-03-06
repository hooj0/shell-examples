#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-17
# copyright by hoojo@2018
# @changelog Added file `chown` shell command example



# ============================================================================
#		chown——改变一个文件或者文件夹的所有者
# ============================================================================
# chown 是 change owner 的意思，它用来改变一个文件或者文件夹的所有者，
# 所有者可以是一个用户或一个用户组。
# chown 用来更改文件或目录的所有者和用户组。使用这个命令需要超级用户权限。
# -----------------------------------------------------------------
# 用法：
# chown [owner][:[group]] file...
# chown [-RhLHPcvf]... USER[:[GRP]] FILE...
#
# 参数 :
#
#   user/owner : 新的文件拥有者的使用者 ID
#   group : 新的文件拥有者的使用者群体(group)
#   -c : 若该文件拥有者确实已经更改，才显示其更改动作
#   -f : 若该文件拥有者无法被更改也不要显示错误讯息
#   -h : 只对于连结(link)进行变更，而非该 link 真正指向的文件
#   -v : 显示拥有者变更的详细资料
#   -R : 对目前目录下的所有文件与子目录进行相同的拥有者变更(即以递回的方式逐个变更)
# -----------------------------------------------------------------




# ============================================================================
# 示例：将文件 file1.txt 的拥有者设为 users 群体的使用者 docker :
# ============================================================================
chown  users:docker file1.txt

# output:
# ----------------------------------------------------------------------------
# 



# ============================================================================
# 示例：将目前目录下的所有文件与子目录的拥有者皆设为 users 群体的使用者 lamport
# ============================================================================
chown -R users:lamport *


# output:
#-----------------------------------------------------------------------------
#



# ============================================================================
# 示例：把文件所有者从当前属主更改为用户 bob
# ============================================================================
chown bob file1.txt

# output:
#-----------------------------------------------------------------------------
#



# ============================================================================
# 示例：把文件所有者改为用户 bob，文件用户组改为用户组 users
# ============================================================================
chown bob:users file1.txt

# output:
#-----------------------------------------------------------------------------
#



# ============================================================================
# 示例： 把文件用户组改为组 admins，文件所有者不变
# ============================================================================
chown :admins file1.txt

# output:
#-----------------------------------------------------------------------------
#



# ============================================================================
# 示例：文件所有者改为用户 bob，文件用户组改为用户 bob 登录系统时所属的用户组
# ============================================================================
chown bob: file1.txt

# output:
#-----------------------------------------------------------------------------
#


# ============================================================================
# 示例：用户 tom 拥有超级权限，他创建一个文件，想让用户 jack 能够拥有编辑
#      的权限，这时 tom 可以修改这个文件所有者达到目的。
# ============================================================================
sudo cp file.txt ~jack
# 改变所有者
sudo chown jack: ~jack/myfile.txt

sudo ls -l

# output:
#-----------------------------------------------------------------------------
# -rw-r--r-- 1 jack  jack 8031 2018-07-17 14:30 /home/jack/myfile.txt




read exits