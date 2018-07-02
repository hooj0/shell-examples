#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-06-28
# copyright by hoojo@2018



# =================================================================
#		ln —— 创建文件连接
# =================================================================
# ln 命令既可创建硬链接，也可以创建符号链接。
#
# 硬链接不能跨越物理设备， 硬链接不能关联目录，只能是文件
# 符号链接是文件的特殊类型，它包含一个指向 目标文件或目录的文本指针。
# -----------------------------------------------------------------




# =================================================================
#	 示例：创建符号链接，它们和 Windows 的快捷方式差不多。
#         当文件a.txt修改，a_link 的内容也会变化。可以是一个文件或是一个目录
# 删除一个符号链接时，只有这个链接被删除
# =================================================================
ln a.txt a_link

# output:
#-------------------------------------------------------------------
# 




# =================================================================
#	 示例：创建硬链接
# =================================================================
ln -s item link

# output:
#-------------------------------------------------------------------
#




# =================================================================
# 进入练习场
# =================================================================
cd .playground


# 创建硬链接
# ----------------------------------------
ln test test-link

ln test dir1/test-link
ln test dir2/test-link

ls -l
ls -l dir2 dir1
# 注意到一件事，列表中，文件 test 和 test-link 的第二个字段是”4”，这个数字 是文件”test”的硬链接数量。


# ls -li 选项 i 代表文件在磁盘的索引节点位置 innode
# 当我们创建文件硬链接的时候，实际上是为文件创建了额外的名字部分， 并且这些名字都关联到相同的数据部分。
# 这时系统会分配一连串的磁盘块给所谓的索引节点，然后索引节点与文 件名字部分相关联。
# 因此每一个硬链接都关系到一个具体的包含文件内容的索引节点。
ls -li
ls -li dir2 dir1

# 通过 选项i 发现test-link 和 test 的innode都一样，证明是同一个文件

# 创建符号链接
# ----------------------------------------
# 在当前位置创建一个符号链接 test-sym 指向文件 test
ln -s test test-sym

# 在文件 dir1&dir2下 创建test-sym 指向上一层目录中的 test
ln -s ../test dir1/test-sym
ln -s ../test dir2/test-sym

# 查看链接
ls -l
ls -l dir1 dir2

# 总用量 0
# lrwxrwxrwx. 1 root root 7 7月   2 14:28 test-link -> ../test
# 通过在第一字段中的首字符”l” 可知，并且它还指向”../test”，也是正确的。

# 使用绝对路径，绝对路径在后期重命名或者移动会破坏符号链接
ln -s /home/me/playground/test dir1/test-sym







read exits