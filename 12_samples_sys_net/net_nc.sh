#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-09-11
# copyright by hoojo@2018
# @changelog Aded system net tools `nc` command example



# =================================================================
#		nc —— 网络调试及数据传输
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
#	 示例：测试网络和端口的联通状态
# =================================================================
nc -v -z -w 2 localhost 8080

# 也可以如下
nc -v -z -w 2 http://localhost:8080

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例：
# =================================================================


# output:
#-------------------------------------------------------------------
#







read exits