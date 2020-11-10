#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-04
# copyright by hoojo@2018
# @changelog Added help document `appropos` shell command example




# =================================================================================
#       apropos —— 显示适当的命令
# =================================================================================
# 也有可能搜索参考手册列表，基于某个关键字的匹配项。虽然很粗糙但有时很有用。
# ---------------------------------------------------------------------------------




# =================================================================================
# 示例：匹配所有passwd相关的命令
# =================================================================================
apropos passwd

# output:
#----------------------------------------------------------------------------------
#chpasswd (8)         - 批量更新密码
#gpasswd (1)          - 管理员 /etc/group 和 /etc/gshadow
#CURLOPT_KEYPASSWD (3) - set passphrase to private key
#CURLOPT_PROXY_KEYPASSWD (3) - set passphrase to proxy private key
#fgetpwent_r (3)      - get passwd file entry reentrantly
#getpwent_r (3)       - get passwd file entry reentrantly
#grub2-mkpasswd-pbkdf2 (1) - Generate a PBKDF2 password hash.
#lpasswd (1)          - Change group or user password
#lppasswd (1)         - add, change, or delete digest passwords.
#pam_localuser (8)    - require users to be listed in /etc/passwd
#passwd (1)           - update user's authentication tokens
#sslpasswd (1ssl)     - compute password hashes
#passwd (5)           - password file
#passwd2des (3)       - RFS password encryption
#pwhistory_helper (8) - Helper binary that transfers password hashes from passwd or shadow to opasswd
#saslpasswd2 (8)      - set a user's sasl password
#smbpasswd (5)        - The Samba encrypted password file
#smbpasswd (8)        - change a user's SMB password


# =================================================================================
# 示例：man 命令也有 apropos 一样的功能效果
# =================================================================================
man -k passwd

# output:
#----------------------------------------------------------------------------------
#







read exits