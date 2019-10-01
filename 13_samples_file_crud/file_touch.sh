#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-09-12
# copyright by hoojo@2018
# @changelog Added file curd `touch` shell command example



# =================================================================
#		touch —— 创建或更新文件
# =================================================================
# 更新某个文件的访问和修改时间戳，如果文件不存在，将会被创建。
# -----------------------------------------------------------------




# =================================================================
#	 示例：创建新文件
# =================================================================
touch file/foo.txt

# 创建新文件
> foo.txt

# output:
#-------------------------------------------------------------------
# 


# =================================================================
# 示例：更新文件，覆盖
# =================================================================
touch file/foo.txt

# output:
#-------------------------------------------------------------------
#







read exits