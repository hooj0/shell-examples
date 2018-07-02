#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-02
# copyright by hoojo@2018



# =================================================================
#		mv —— 移动文件
# =================================================================
# 把一个文件从一个位置移动到另一个位置
# -----------------------------------------------------------------
#   选项	                    意义
# -----------------------------------------------------------------
# -i --interactive	    在重写一个已经存在的文件之前，提示用户确认信息。 如果不指定这个选项，mv 命令会默认重写文件内容。
# -u --update	        当把文件从一个目录移动另一个目录时，只是移动不存在的文件， 或者文件内容新于目标目录相对应文件的内容。
# -v --verbose	        当操作 mv 命令时，显示翔实的操作信息。
# -----------------------------------------------------------------
#   实例
# -----------------------------------------------------------------
# mv file1 file2 	    移动 file1 到 file2。
#                       如果 file2 存在，它的内容会被 file1 的内容重写。
#                       如果 file2 不存在，则创建 file2。 这两种情况下，file1 都不再存在。
# mv -i file1 file2 	除了如果 file2 存在的话，在 file2 被重写之前，用户会得到 提示信息外，这个和上面的选项一样。
# mv file1 file2 dir1 	移动 file1 和 file2 到目录 dir1 中。dir1 必须已经存在。
# mv dir1 dir2 	        如果目录 dir2 不存在，创建目录 dir2，
#                       并且移动目录 dir1 的内容到 目录 dir2 中，同时删除目录 dir1。
#                       如果目录 dir2 存在，移动目录 dir1（及它的内容）到目录 dir2。
# -----------------------------------------------------------------




# =================================================================
#	 示例1：移动文件，相当于重命名
# =================================================================
mv a.txt a.bak

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例2：改变位置
# =================================================================
mv a.txt /home/a.txt

# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：移动 file1 到 file2。
# 如果 file2 存在，它的内容会被 file1 的内容重写。
# 如果 file2 不存在，则创建 file2。 这两种情况下，file1 都不再存在。
# =================================================================
mv file1 file2


# =================================================================
#	 示例：移动 file1 到 file2。用户会得到 提示信息.
# 除了如果 file2 存在的话，在 file2 被重写之前，用户会得到 提示信息外，这个和上面的选项一样。
# =================================================================
mv -i file1 file2



# =================================================================
#	 示例：移动 file1 和 file2 到目录 dir1 中。dir1 必须已经存在。
# =================================================================
mv file1 file2 dir1



# =================================================================
#	 示例：如果目录 dir2 不存在，创建目录 dir2，
# 并且移动目录 dir1 的内容到 目录 dir2 中，同时删除目录 dir1。
# 如果目录 dir2 存在，移动目录 dir1（及它的内容）到目录 dir2。
# =================================================================
mv dir1 dir2



# =================================================================
# 进入练习场
# =================================================================
cd .playground


# 移动或重命名

# 重命名一个文件
mv profile test

# 移动 test 到 dir1
mv test dir1

# 移动 test 到 dir2
mv dir1/test dir2

# 移动 test 到 当前目录
mv dir2/test .

# 再次将 test 移动到 dir1
mv test dir1

# 将 dir1 移到 dir2
# 注意：因为目录 dir2 已经存在，mv 命令会把 dir1 移动到 dir2 目录中。如果 dir2 不存在， mv 会把dir1重命名为 dir2。
mv dir1 dir2

# 还原
mv dir2/dir1 .
mv dir1/test .



read exits