#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-18
# copyright by hoojo@2018



# =================================================================
# group & user —— 用户组和用户
# =================================================================
# 用户组 是用户的权限分配的根据，一个组拥有的权限用户也会拥有
# 用户 依赖于用户组，一个用户拥有多个用户组，用户是系统登录操作的对象
# -----------------------------------------------------------------
# 文件	            目的
# -----------------------------------------------------------------
# /etc/shadow	安全的用户帐户信息
# /etc/passwd	用户帐户信息
# /etc/gshadow	包含组帐户的阴影信息
# /etc/group	定义用户所属的组
# /etc/sudoers	谁可以通过sudo运行什么的列表
# /home/*	    主页目录
# -----------------------------------------------------------------
# 警告：请勿手动编辑这些文件。有些实用程序可以正确处理锁定并避免使数据库格式无效。
# https://wiki.archlinux.org/index.php/Users_and_groups
# -----------------------------------------------------------------


# =================================================================
#	 示例：groups 查看当前用户的用户组
# =================================================================
# 默认查看当前用户
groups

# 查看当前用户
groups ${USER}

# 查看指定用户组
groups root

# id 查看用户组
id -Gn
id -Gn root

# output:
#-------------------------------------------------------------------
# super wheel docker hyperledger


# =================================================================
#	 示例：通过文件查看“特定”用户的用户组
# =================================================================
cat /etc/group | grep super
grep "^developers" /etc/group


# output:
#-------------------------------------------------------------------
#wheel:x:10:tempsa,super
#super:x:1003:
#docker:x:990:super,app
#hyperledger:x:2001:super


# =================================================================
#	 示例：查看用户的资格 详细组信息
# =================================================================
# 查看特定用户组
getent group super

# 查看所有分组
getent group

# output:
#-------------------------------------------------------------------
#super:x:1000:



# =================================================================
#	 示例：添加用户组
# =================================================================
groupadd new_group

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例：添加用户到已有的组
# =================================================================
# useradd -G group username
# 添加用户geek 到 ftp 组
useradd -G ftp geek

# 然后分配密码
passwd geek

# output:
#-------------------------------------------------------------------
#


# =================================================================
#	 示例：添加用户到用户组，并设置主目录和shell
# =================================================================
# useradd -m -g initial_group -G additional_groups -s login_shell  username
# useradd -m -g "初始组" -G "附加组" -s "登陆shell" "用户"
#-------------------------------------------------------------------
#-m：创建用户主目录/home/[用户名]；在自己的主目录内，即使不是root用户也可以读写文件、安装程序等等。
#-g：设置用户初始组的名称或数字ID；该组必须是存在的；如果没有设置该选项，
#       useradd会根据/etc/login.defs文件中的USERGROUPS_ENAB环境变量进行设置。
#       默认(USERGROUPS_ENAB yes) 会用和用户名相同的名字创建群组，GID 等于 UID.
#-G：用户要加入的附加组列表；使用逗号分隔多个组，不要添加空格；如果不设置，用户仅仅加入初始组。
#-s：用户默认登录shell的路径；启动过程结束后，默认启动的登录shell在此处设定；
#   请确保使用的shell已经安装，默认是 Bash。
#-------------------------------------------------------------------
#警告: 为了登录，登录 shell 必须位于 /etc/shells 中, 否则 PAM 的 pam_shell 模块会阻止登录请求。不
#       要使用 /usr/bin/bash 替代 /bin/bash, 除非这个路径已经在 /etc/shells中正确配置.
# 有时候需要禁止某些用户执行登录动作，例如用来执行系统服务的用户。
# 将shell设置成 /usr/bin/nologin 就可以禁止用户登录。
#-------------------------------------------------------------------
useradd -m -g guest -G docker -s /bin/bash test
useradd -m -g root -G ftp -s /bin/sh geek

# 不设置默认组，使用系统默认组
# 此命令会自动创建 archie 群组，并成为 user_foo 的默认登录群组。
# umask 默认值是 002, 所以同一个默认群组的用户会有创建文件的写权限
useradd -m -G wheel -s /bin/bash user_foo

#要赋予一个群组某个目录的写权限，可以在父目录中设置
chmod g+s our_shared_directory

# 禁止登陆
useradd -m -g root -G ftp -s /usr/bin/nologin task_user

# 添加系统用户，为进程、守护进程分配不同的系统用户可以更安全的管控目录及文件的访问
useradd -r -s /usr/bin/nologin username


# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：追加用户到已有的用户组
#-------------------------------------------------------------------
# usermod命令选项摘要
#-------------------------------------------------------------------
# 选项	        目的
#-------------------------------------------------------------------
# -a，--append	                    将用户添加到补充组。仅与-G选项一起使用。
# -g GROUP，--gid GROUP	            使用此GROUP作为默认组。
# -G GRP1,GRP2，--groups GRP1,GRP2	将用户添加到GRP1，GRP2辅助组。
# =================================================================
# 添加到 new_group 组
usermod -a -G new_group user

# 添加到 sudo 组
usermod -a -G sudo user

# 添加到 多个组
#usermod -a -G group1,group2,group3 user_name
usermod -a -G ftp,sudo,example geek

# 追加用户到新的群组，但是一次只能加入一个组：
gpasswd --add username group


# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：修改用户默认组，将变更为只有唯一组
# =================================================================
# 用户 user 仅有 new_group 组
usermod -g new_group user

# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：更改用户信息
# =================================================================
# 更改用户登录名
usermod -l newname oldname

# 更改用户主目录，-m 选项会自动创建新目录并移动内容
usermod -d /my/new/home -m username

# 修改用户信息
chfn ${USER}

# output:
#-------------------------------------------------------------------
#


# =================================================================
#	 示例：删除用户信息
# =================================================================
# -r 选项表示一并删除用户主目录和邮件
userdel -r username

# output:
#-------------------------------------------------------------------
#


read exits