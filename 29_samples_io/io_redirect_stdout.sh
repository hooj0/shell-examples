#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-06
# copyright by hoojo@2018
# @changelog Added io redirect `stdout` shell command example




# =================================================================
#       IO —— 标准输出重定向
# =================================================================
# 标准输入、输出和错误，输入输出的的情况有：
#   第一，程序运行结果；
#   第二，我们得到状态和错误信息， 这些告诉我们程序进展。
#
# 标准输出的特殊文件（经常用 stdout 表示），
# 而它们的状态信息则送到另一个 叫做标准错误的文件（stderr）。
# 默认情况下，标准输出和标准错误都连接到屏幕，而不是保存到磁盘文件。
# 标准输入（stdin）的设备得到输入，默认情况下， 标准输入连接到键盘。
# -----------------------------------------------------------------




# =================================================================
# 示例：标准输出重定向
#      显示目录/usr/bin 列表，并且输送程序运行结果到文件 ls-output.txt 中
# =================================================================
ls -l /usr/bin > ls-output.txt

# 查看文件内容
less ls-output.txt




# =================================================================
# 示例：标准输出重定向。
#      把目录换成一个不存在的目录
# =================================================================
ls -l /bin/usr > ls-output.txt

# 查看文件内容，发现内容为空。
# 这是因为ls 程序不把它的错误信息输送到标准输出。
less ls-output.txt

# size = 0，重定向符来重定向输出结果时，目标文件总是从开头被重写。
# 因为命令出错，所以重定向终止写入，内容被清空。
ls -l ls-output.txt

# output:
#-------------------------------------------------------------------
# ls: cannot access /bin/usr: No such file or directory




# =================================================================
# 示例：清空文件内容 & 创建空文件
# =================================================================
> ls-output.txt



# =================================================================
# 示例：重定向追加文件内容，不清空之前的内容。
#       使用”>>“操作符，将导致输出结果添加到文件内容之后。
#       如果文件不存在，文件会 被创建，就如使用了”>”操作符。
# =================================================================
ls -l /usr/bin >> ls-output.txt
ls -l /usr/bin >> ls-output.txt


# output:
#-------------------------------------------------------------------
#



# =================================================================
# 示例：处理不需要的输出
# =================================================================
ls -l /bin/usr 2> /dev/null

# output:
#-------------------------------------------------------------------
#







read exits