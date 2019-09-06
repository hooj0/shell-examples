#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-02
# copyright by hoojo@2018
# @changelog Added file curd `lpq` shell command example



# =============================================================================================
#		cp——复制文件
# =============================================================================================
# 把一个文件从一个位置复制到另外一个位置。
# 上面 filename1 是源文件位置， filename2 是目标位置（精确到文件名）。
# ---------------------------------------------------------------------------------------------
# 语法
#   cp [options] source dest
#   或 cp [options] source... directory
#
# 参数说明：
#
#   -a：此选项通常在复制目录时使用，它保留链接、文件属性，并复制目录下的所有内容。其作用等于dpR参数组合。
#   -d：复制时保留链接。这里所说的链接相当于Windows系统中的快捷方式。
#   -f：覆盖已经存在的目标文件而不给出提示。
#   -i：与-f选项相反，在覆盖目标文件之前给出提示，要求用户确认是否覆盖，回答"y"时目标文件将被覆盖。
#   -p：除复制文件的内容外，还把修改时间和访问权限也复制到新文件中。
#   -r：若给出的源文件是一个目录文件，此时将复制该目录下所有的子目录和文件。
#   -l：不复制文件，只是生成链接文件。
# ---------------------------------------------------------------------------------------------
# 选项	                意义
# ---------------------------------------------------------------------------------------------
# -a, --archive	    复制文件和目录，以及它们的属性，包括所有权和权限。 通常，复本具有用户所操作文件的默认属性。
# -i, --interactive	在重写已存在文件之前，提示用户确认。如果这个选项不指定， cp 命令会默认重写文件。
# -r, --recursive	递归地复制目录及目录中的内容。当复制目录时， 需要这个选项（或者-a 选项）。
# -u, --update	    当把文件从一个目录复制到另一个目录时，仅复制 目标目录中不存在的文件，或者是文件内容新于目标目录中已经存在的文件。
# -v, --verbose	    显示翔实的命令操作信息
# ---------------------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------------------
# cp 实例
# ---------------------------------------------------------------------------------------------
# 命令 	运行结果
# ---------------------------------------------------------------------------------------------
# cp file1 file2 	    复制文件 file1 内容到文件 file2。
#                       如果 file2 已经存在， file2 的内容会被 file1 的内容重写。如果 file2 不存在，则会创建 file2。
# cp -i file1 file2 	这条命令和上面的命令一样，除了如果文件 file2 存在的话，在文件 file2 被重写之前， 会提示用户确认信息。
# cp file1 file2 dir1 	复制文件 file1 和文件 file2 到目录 dir1。目录 dir1 必须存在。
# cp dir1/* dir2 	    使用一个通配符，在目录 dir1 中的所有文件都被复制到目录 dir2 中。 dir2 必须已经存在。
# cp -r dir1 dir2 	    复制目录 dir1 中的内容到目录 dir2。
#                       如果目录 dir2 不存在， 创建目录 dir2，操作完成后，目录 dir2 中的内容和 dir1 中的一样。
#                       如果目录 dir2 存在，则目录 dir1 (和目录中的内容)将会被复制到 dir2 中。
# ---------------------------------------------------------------------------------------------



# =============================================================================================
# 示例：复制目录，保留链接、文件属性，并复制目录下的所有内容
# =============================================================================================
cp -a src dst



# =============================================================================================
# 示例：覆盖已经存在的目标文件
# =============================================================================================
cp -f a.txt d.txt



# =============================================================================================
# 示例：复制目录下的所有目录和文件
# ---------------------------------------------------------------------------------------------
# 复制目录 dir1 中的内容到目录 dir2。如果目录 dir2 不存在，
# 创建目录 dir2，操作完成后，目录 dir2 中的内容和 dir1 中的一样。
# 如果目录 dir2 存在，则目录 dir1 (和目录中的内容)将会被复制到 dir2 中。
# =============================================================================================
cp -r a.txt d.txt




# =============================================================================================
# 示例：建立链接link
# =============================================================================================
cp -l a.txt z.txt



# =============================================================================================
# 示例：复制文件，如果文件 file2 存在的话，在文件 file2 被重写之前， 会提示用户确认信息
# =============================================================================================
cp -i file1 file2



# =============================================================================================
#	 示例：复制文件 file1 和文件 file2 到目录 dir1。目录 dir1 必须存在
# =============================================================================================
cp file1 file2 dir1



# =============================================================================================
#	 示例：使用一个通配符，在目录 dir1 中的所有文件都被复制到目录 dir2 中。 dir2 必须已经存在。
# =============================================================================================
cp dir1/* dir2



# =============================================================================================
# 进入练习场
# =============================================================================================
cd .playground

# 创建目录
mkdir dir1 dir2

# 复制文件
cp /etc/profile .
# 复制文件时，可以看到详细操作
cp -v /etc/install-options.txt .
# 交互式复制文件，会提示是否执行（y/n）
# 在提示信息后输入”y”，文件就会被重写，输入其它的字符（例如，”n”） cp 命令会保留原文件。
cp -i /etc/profile .

ls -l



read exits