#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-12-04
# copyright by hoojo@2018



# =================================================================
#		column —— 将文本格式化成多个对齐、定宽的列或表格
# =================================================================
# 选项            含义
# -c 字符数	    指定显示的列宽
# -s “分隔符 “	使用-t选项时，指定分隔符（允许指定多个分隔符）
# -t	        判断输入行的列数来创建一个表。分隔符是使用在-s中指定的字符。
#               如果没有指定分隔符，默认是空格
# -x	        更改排列顺序（左→右）。默认的顺序为（上→下）
# -----------------------------------------------------------------




# =================================================================
# 示例：准备操作，进入练习场
# =================================================================
cd .playground/
cat ls-file.txt

# output:
#-------------------------------------------------------------------
#winpty.dll
#winpty.exe
#wordpad
#xargs.exe
#xgettext.exe
#xsltproc.exe
#xxd.exe
#yes.exe
#zcat
#zcmp
#zdiff
#zegrep
#zfgrep
#zforce
#zgrep
#zipgrep
#zipinfo.exe
#zless
#zmore
#znew


# =================================================================
# 示例：分列显示文件中的单词
# =================================================================
column ls-file.txt

# output:
#-------------------------------------------------------------------
#getopt.exe                      msys-charset-1.dll              msys-sqlite3vfslog-0.dll        sha384sum.exe                   zmore
#gettext.exe                     msys-cilkrts-5.dll              msys-sqlite3vfsstat-0.dll       sha512sum.exe                   znew
#gettext.sh                      msys-com_err-1.dll              msys-sqlite3vtshim-0.dll        shred.exe
#gettextize                      msys-crypt-0.dll                msys-sqlite3wholenumber-0.dll   shuf.exe


# 设置字符数 宽度
column -c 100 ls-file.txt

# output:
#-------------------------------------------------------------------
#mintheme                        msys-uuid-1.dll                 zgrep
#mintty.exe                      msys-wind-0.dll                 zipgrep
#mkdir.exe                       msys-xml2-2.dll                 zipinfo.exe
#mkfifo.exe                      msys-xslt-1.dll                 zless
#mkgroup.exe                     msys-z.dll                      zmore
#mknod.exe                       mv.exe                          znew

cat /etc/passwd
# root:x:0:0:root:/root:/bin/bash

# 设置分隔符
# 设置 表格形式
cat /etc/passwd | column -s ':' -t

# output:
#-------------------------------------------------------------------
#root               x  0      0      root                                /root                 /bin/bash
#daemon             x  1      1      daemon                              /usr/sbin             /usr/sbin/nologin
#bin                x  2      2      bin                                 /bin                  /usr/sbin/nologin
#sys                x  3      3      sys                                 /dev                  /usr/sbin/nologin
#sync               x  4      65534  sync                                /bin                  /bin/sync
#games              x  5      60     games                               /usr/games            /usr/sbin/nologin