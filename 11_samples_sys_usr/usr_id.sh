#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-12
# copyright by hoojo@2018




# =================================================================
#		id —— 当前用户组的id身份信息
# =================================================================
# 当用户创建帐户之后，系统会给用户分配一个号码，叫做用户 ID 或者 uid
# 这个 ID 映射到一个用户名
# 系统又会给这个用户 分配一个原始的组 ID 或者是 gid，这个 gid 可能属于另外的组
# -----------------------------------------------------------------
# 那么这些信息来源于哪里呢？
# 用户帐户 定义在/etc/passwd 文件里面，用户组定义在/etc/group 文件里面。
# 当用户帐户和用户组创建以后， 这些文件随着文件/etc/shadow 的变动而修改，
# 文件/etc/shadow 包含了关于用户密码的信息。
#
# 对于每个用户帐号，文件/etc/passwd 定义了用户（登录）名、
# uid、gid、帐号的真实姓名、HOME目录 和登录 shell。
# 如果你查看一下文件/etc/passwd 和文件/etc/group 的内容，
# 你会注意到除了普通 用户帐号之外，还有超级用户（uid 0）帐号，和各种各样的系统用户。
# -----------------------------------------------------------------




# =================================================================
#	 示例：查看当前用户身份信息
# =================================================================
id

# output:
#-------------------------------------------------------------------
# uid=1000(jojo) gid=1000(jojo) 组=1000(jojo),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),108(lpadmin),124(sambashare)



# =================================================================
#	 示例：
# =================================================================
# 用户帐户
less /etc/passwd
# 用户组
less /etc/group
# 用户密码的信息
less /etc/shadow


# output:
#-------------------------------------------------------------------
#







read exits