#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-19
# copyright by hoojo@2018
# @changelog Added dir `ls` shell command example



# ================================================================================
#		ls ——  文件系统 列表
# ================================================================================
# ls — 列出目录内容
# --------------------------------------------------------------------------------
# 以 “.” 字符开头的文件名是隐藏文件。这仅表示，ls 命令不能列出它们， 用 ls -a 命令就可以了
# 文件名和命令名是大小写敏感的
# --------------------------------------------------------------------------------
# 选项	长选项	                描述
# --------------------------------------------------------------------------------
# -a	--all	            列出所有文件，甚至包括文件名以圆点开头的默认会被隐藏的隐藏文件。
# -d	--directory	        通常，如果指定了目录名，ls 命令会列出这个目录中的内容，而不是目录本身。 把这个选项与 -l 选项结合使用，可以看到所指定目录的详细信息，而不是目录中的内容。
# -F	--classify	        这个选项会在每个所列出的名字后面加上一个指示符。例如，如果名字是 目录名，则会加上一个'/'字符。
# -h	--human-readable	当以长格式列出时，以人们可读的格式，而不是以字节数来显示文件的大小。
# -l		                以长格式显示结果。
# -r	--reverse	        以相反的顺序来显示结果。通常，ls 命令的输出结果按照字母升序排列。
# -S		                命令输出结果按照文件大小来排序。
# -t		                按照修改时间来排序。
# -i                        显示inode
# --------------------------------------------------------------------------------




# ================================================================================
# 示例：ls 查看某个位置下的目录文件或文件夹
# ================================================================================
# 当前目录
ls
# 指定目录
ls /home/root/
# 指定多个目录
ls /home/root/ /opt/


# output：
# -----------------------------------------------------------------
# 1_samples_sys_usr  13_samples_sys_disk  LICENSE             shell.iml




# ================================================================================
# 示例：ls 查看某个位置下的文件
# ================================================================================
ls /tmp/a.txt
ls -l /tmp/a.txt
ls -l /tmp/a.txt /opt/b.txt


# output：
# --------------------------------------------------------------------------------
# a.txt
#
# -rwxr-xr-x 1 JojO 197121 746 Jun 15 21:37 a.txt



# ================================================================================
# 示例：ls 以列表的形式查看，并查看隐藏文件
# ================================================================================
ls -la


# output：
# --------------------------------------------------------------------------------
# total 20
# drwxr-xr-x 1 JojO 197121    0 六月 18 14:09 ./
# drwxr-xr-x 1 JojO 197121    0 六月 18 14:08 ../
# -rwxr-xr-x 1 JojO 197121  994 六月 18 14:10 filesys_cd.sh*
# -rwxr-xr-x 1 JojO 197121 1094 六月 18 14:13 filesys_ls.sh*
# -rwxr-xr-x 1 JojO 197121  680 六月 18 14:11 filesys_pwd.sh*



# ================================================================================
# 示例：{...} 自动化文本组合
# ================================================================================
ls foo.{txt,pdf}

# output：
# --------------------------------------------------------------------------------
# ls: cannot access 'foo.txt': No such file or directory
# ls: cannot access 'foo.pdf': No such file or directory


ls foo{,.bak}
# output：
# --------------------------------------------------------------------------------
# ls: cannot access 'foo': No such file or directory
# ls: cannot access 'foo.bak': No such file or directory



read exits