#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-23
# copyright by hoojo@2018
# @changelog Added file preview `cat` shell command example



# =================================================================
#		diff——比较文件差异
# =================================================================
# 比对两个文件，输出他们的差异。
# diff以逐行的方式，比较文本文件的异同处。
# 如果指定要比较目录，则diff会比较目录中相同文件名的文件，但不会比较其中子目录。
# -----------------------------------------------------------------
# diff 的优点：
#    1、一个 diff 文件非常小，与整个源码树的大小相比较而言。
#    2、一个 diff 文件简洁地显示了所做的修改，从而允许程序补丁的审阅者能快速地评估它。
# -----------------------------------------------------------------
# 语法
#   diff [-abBcdefHilnNpPqrstTuvwy][-<行数>][-C <行数>][-D <巨集名称>]
#       [-I <字符或字符串>][-S <文件>][-W <宽度>][-x <文件或目录>][-X <文件>]
#       [--help][--left-column][--suppress-common-line][文件或目录1][文件或目录2]
#
# 参数：
#
#   -<行数> 　指定要显示多少行的文本。此参数必须与-c或-u参数一并使用。
#   -a或--text 　diff预设只会逐行比较文本文件。
#   -b或--ignore-space-change 　不检查空格字符的不同。
#   -B或--ignore-blank-lines 　不检查空白行。
#   -c 　显示全部内文，并标出不同之处。
#   -C<行数>或--context<行数> 　与执行"-c-<行数>"指令相同。
#   -d或--minimal 　使用不同的演算法，以较小的单位来做比较。
#   -D<巨集名称>或ifdef<巨集名称> 　此参数的输出格式可用于前置处理器巨集。
#   -e或--ed 　此参数的输出格式可用于ed的script文件。
#   -f或-forward-ed 　输出的格式类似ed的script文件，但按照原来文件的顺序来显示不同处。
#   -H或--speed-large-files 　比较大文件时，可加快速度。
#   -l<字符或字符串>或--ignore-matching-lines<字符或字符串> 　若两个文件在某几行有所不同，而这几行同时都包含了选项中指定的字符或字符串，则不显示这两个文件的差异。
#   -i或--ignore-case 　不检查大小写的不同。
#   -l或--paginate 　将结果交由pr程序来分页。
#   -n或--rcs 　将比较结果以RCS的格式来显示。
#   -N或--new-file 　在比较目录时，若文件A仅出现在某个目录中，预设会显示：Only in目录：文件A若使用-N参数，则diff会将文件A与一个空白的文件比较。
#   -p 　若比较的文件为C语言的程序码文件时，显示差异所在的函数名称。
#   -P或--unidirectional-new-file 　与-N类似，但只有当第二个目录包含了一个第一个目录所没有的文件时，才会将这个文件与空白的文件做比较。
#   -q或--brief 　仅显示有无差异，不显示详细的信息。
#   -r或--recursive 　比较子目录中的文件。
#   -s或--report-identical-files 　若没有发现任何差异，仍然显示信息。
#   -S<文件>或--starting-file<文件> 　在比较目录时，从指定的文件开始比较。
#   -t或--expand-tabs 　在输出时，将tab字符展开。
#   -T或--initial-tab 　在每行前面加上tab字符以便对齐。
#   -u,-U<列数>或--unified=<列数> 　以合并的方式来显示文件内容的不同。
#   -v或--version 　显示版本信息。
#   -w或--ignore-all-space 　忽略全部的空格字符。
#   -W<宽度>或--width<宽度> 　在使用-y参数时，指定栏宽。
#   -x<文件名或目录>或--exclude<文件名或目录> 　不比较选项中所指定的文件或目录。
#   -X<文件>或--exclude-from<文件> 　您可以将文件或目录类型存成文本文件，然后在=<文件>中指定此文本文件。
#   -y或--side-by-side 　以并列的方式显示文件的异同之处。
#   --left-column 　在使用-y参数时，若两个文件某一行内容相同，则仅在左侧的栏位显示该行内容。
#   --suppress-common-lines 　在使用-y参数时，仅显示不同之处。
# -----------------------------------------------------------------



# =================================================================
#	 示例：准备数据
# =================================================================
cat << EOF > a.txt
1111
2222
3333
4444
EOF

cat << EOF > b.txt
1111
2222zzz
3333
4444
aaaa
EOF


# =================================================================
# 示例：查看对比不同的数据
# =================================================================
diff a.txt b.txt

# output:
#-------------------------------------------------------------------
#2c2
#< 2222
#---
#> 2222zzz
#4a5
#> aaaa


# =================================================================
# 示例：统计有多少更改信息
# =================================================================
diff a.txt b.txt | diffstat

# output:
#-------------------------------------------------------------------
# 1 file changed, 1 insertion(+), 1 deletions(-)




# =================================================================
#	 示例：对比文件夹下的更改记录
# =================================================================
diff -r dir1 dir2
diff -r dir1 dir2 | diffstat



# =================================================================
# 示例：diff 更改命令
#-------------------------------------------------------------------
# 改变 	    说明
#-------------------------------------------------------------------
# r1ar2 	把第二个文件中位置 r2 处的文件行添加到第一个文件中的 r1 处。
# r1cr2 	用第二个文件中位置 r2 处的文本行更改（替代）位置 r1 处的文本行。
# r1dr2 	删除第一个文件中位置 r1 处的文本行，这些文本行将会出现在第二个文件中位置 r2 处。
# =================================================================
diff -c file1.txt file2.txt

# output:
#-------------------------------------------------------------------
#*** file1.txt    2008-12-23 06:40:13.000000000 -0500
#--- file2.txt   2008-12-23 06:40:34.000000000 -0500
#***************
#*** 1,4 ****
#- a
#  b
#  c
#  d
#--- 1,4 ----
#  b
#  c
#  d
#  + e



# =================================================================
# 示例：diff 上下文模式更改指示符
#-------------------------------------------------------------------
# 指示符 	    意思
#-------------------------------------------------------------------
# blank 	上下文显示行。它并不表示两个文件之间的差异。
# - 	    删除行。这一行将会出现在第一个文件中，而不是第二个文件内。
# + 	    添加行。这一行将会出现在第二个文件内，而不是第一个文件中。
# ! 	    更改行。将会显示某个文本行的两个版本，每个版本会出现在更改组的各自部分。
# =================================================================
diff -u file1.txt file2.txt

# output:
#-------------------------------------------------------------------
#--- file1.txt 2008-12-23 06:40:13.000000000 -0500
#+++ file2.txt 2008-12-23 06:40:34.000000000 -0500
#@@ -1,4 +1,4 @@
#-a
# b
# c
# d
#+e


