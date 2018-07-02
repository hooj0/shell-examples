#!/bin/sh

# =================================================================
#		watch —— 重复运行同一个命令，展示结果并／或高亮有更改的部分
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
#	 示例：检查某个文件夹中文件的改变。持续监测文件改动，监测文件数量、大小等数据变化
# =================================================================
watch -d -n 2 'ls -rtlh | tail'


# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例：监测网络设置的更改
# =================================================================
watch -d -n 2 ifconfig

# output:
#-------------------------------------------------------------------
#







read exits