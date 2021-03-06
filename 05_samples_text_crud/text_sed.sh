#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-29
# copyright by hoojo@2018
# @changelog Added text `sed` shell command example



# ====================================================================================
#		sed —— 过滤和替换文本
# ====================================================================================
# 用于过滤和替换文本的流式编辑命令
# 名字 sed 是 stream editor（流编辑器）的简称。
# 它对文本流，即一系列指定的文件或标准输入进行编辑。
# ====================================================================================
# 参数说明：
# ------------------------------------------------------------------------------------
# -e <script>或 --expression=<script>     以选项中指定的script来处理输入的文本文件。
# -f <script文件> 或 --file=<script文件>    以选项中指定的script文件来处理输入的文本文件。
# -h或--help     显示帮助。
# -n或--quiet或--silent   仅显示script处理后的结果。
# -V或--version      显示版本信息。
# ====================================================================================
# 动作说明：
# ------------------------------------------------------------------------------------
# a ：新增， a 的后面可以接字串，而这些字串会在新的一行出现(目前的下一行)～
# c ：取代， c 的后面可以接字串，这些字串可以取代 n1,n2 之间的行！
# d ：删除，因为是删除啊，所以 d 后面通常不接任何咚咚；
# i ：插入， i 的后面可以接字串，而这些字串会在新的一行出现(目前的上一行)；
# p ：打印，亦即将某个选择的数据印出。通常 p 会与参数 sed -n 一起运行～
# s ：取代，可以直接进行取代的工作哩！通常这个 s 的动作可以搭配正规表示法！例如 1,20s/old/new/g
# ====================================================================================
# sed 地址表示法
# ------------------------------------------------------------------------------------
# 地址 	说明
# ------------------------------------------------------------------------------------
# n 	        行号，n 是一个正整数。
# $ 	        最后一行。
# /regexp/ 	    所有匹配一个 POSIX 基本正则表达式的文本行。注意正则表达式通过 斜杠字符界定。
#               选择性地，这个正则表达式可能由一个备用字符界定，通过\cregexpc 来 指定表达式，这里 c 就是一个备用的字符。
# addr1,addr2 	从 addr1 到 addr2 范围内的文本行，包含地址 addr2 在内。地址可能是上述任意 单独的地址形式。
# first~step 	匹配由数字 first 代表的文本行，然后随后的每个在 step 间隔处的文本行。
#               例如 1~2 是指每个位于偶数行号的文本行，5~5 则指第五行和之后每五行位置的文本行。
# addr1,+n 	    匹配地址 addr1 和随后的 n 个文本行。
# addr! 	    匹配所有的文本行，除了 addr 之外，addr 可能是上述任意的地址形式。
# ====================================================================================
#  sed 基本编辑命令
# ------------------------------------------------------------------------------------
# 命令 	说明
# ------------------------------------------------------------------------------------
# = 	输出当前的行号。
# a 	在当前行之后追加文本。
# d 	删除当前行。
# i 	在当前行之前插入文本。
# p 	打印当前行。默认情况下，sed 程序打印每一行，并且只是编辑文件中匹配 指定地址的文本行。
#       通过指定-n 选项，这个默认的行为能够被忽略。
# q 	退出 sed，不再处理更多的文本行。如果不指定-n 选项，输出当前行。
# Q 	退出 sed，不再处理更多的文本行。
# s/regexp/replacement/ 	只要找到一个 regexp 匹配项，就替换为 replacement 的内容。
#                           replacement 可能包括特殊字符 &，其等价于由 regexp 匹配的文本。
#                           另外， replacement 可能包含序列 \1到 \9，其是 regexp 中相对应的子表达式的内容。
#                           更多信息，查看 下面 back references 部分的讨论。
#                           在 replacement 末尾的斜杠之后，可以指定一个 可选的标志，来修改 s 命令的行为。
# y/set1/set2 	            执行字符转写操作，通过把 set1 中的字符转变为相对应的 set2 中的字符。
#                           注意不同于 tr 程序，sed 要求两个字符集合具有相同的长度。
# ------------------------------------------------------------------------------------



# ====================================================================================
# 示例：替换文本
# ====================================================================================
echo "front" | sed 's/front/back/'
# 保持一致的分隔符即可满足替换
echo "front" | sed 's_front_back_'


# ====================================================================================
# 示例：命令添加地址 1，就导致只对仅有一行文本的输入流的第一行执行替换操作
# ====================================================================================
echo "front" | sed '1s/front/back/'


# ====================================================================================
# 示例：把 example.txt 所有空格替换为连字符并输出
# ====================================================================================
sed 's/ /-/g' example.txt

# output:
#-------------------------------------------------------------------------------------
#Lorem-ipsum
#dolor-sit-amet,
#consetetur
#sadipscing-elitr,
#sed-diam-nonumy
#eirmod-tempor
#invidunt-ut-labore
#et-dolore-magna
#aliquyam-erat,-sed
#diam-voluptua.-At
#vero-eos-et
#accusam-et-justo
#duo-dolores-et-ea
#rebum.-Stet-clita
#kasd-gubergren,
#no-sea-takimata
#sanctus-est-Lorem
#ipsum-dolor-sit
#amet.



# ====================================================================================
# 示例：把所有a、b、c替换为 "_"
# ====================================================================================
sed 's/[a-c]/_/g' example.txt



# output:
#-------------------------------------------------------------------------------------
#Lorem ipsum
#dolor sit _met,
#_onsetetur
#s_dips_ing elitr,
#sed di_m nonumy
#eirmod tempor
#invidunt ut l__ore
#et dolore m_gn_
#_liquy_m er_t, sed
#di_m voluptu_. At
#vero eos et
#___us_m et justo
#duo dolores et e_
#re_um. Stet _lit_
#k_sd gu_ergren,
#no se_ t_kim_t_
#s_n_tus est Lorem
#ipsum dolor sit
#_met.



# ====================================================================================
# 示例：提取1-5行的文本。
# ====================================================================================
# 开始于第一行，直到第五行；使用 p 命令， 其就是简单地把匹配的文本行打印出来。
# 选项 -n（不自动打印选项）， 让 sed 不要默认地打印每一行。
sed -n '1,5p' distros.txt



# ====================================================================================
# 示例：排除 SUSE 关键字的记录
# ====================================================================================
sed -n '/SUSE/!p' distros.txt


# ====================================================================================
# 示例：修改日期格式
# ====================================================================================
# ([0-9]{2})/([0-9]{2})/([0-9]{4})$ 匹配年月日
# /\3-\1-\2/ 此表达式给出了年份，一个短划线，月份，一个短划线，和某天。
sed 's/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)$/\3-\1-\2/' distros.txt


# output:
#-------------------------------------------------------------------------------------
# SUSE           10.2     2006-12-07
# Fedora         10       2008-11-25



# ====================================================================================
# 示例：s 命令的另一个功能是使用可选标志，其跟随替代字符串。可选标志是 g 标志，
# 其 指示 sed 对某个文本行全范围地执行查找和替代操作，这是默认行为
# ====================================================================================
# 默认 全局替换
echo "aaabbbccc" | sed 's/b/B/'

# g 全局替换
echo "aaabbbccc" | sed 's/b/B/g'



# ====================================================================================
# 示例：生成表格
# ====================================================================================
sort -k 1,1 -k 2n distros.txt | sed -f distros-tbl.sed | groff -t > ~/Desktop/foo.ps



# ====================================================================================
# 示例：在文件的第四行后添加一行，并将结果输出到标准输出
# ====================================================================================
# 新增一行
sed -e 4a\newLine tmp.txt



# ====================================================================================
# 示例：以行为单位的新增/删除
# ====================================================================================
# 将 /etc/passwd 的内容列出并且列印行号，同时将第 2~5 行删除
# d 是删除
nl /etc/passwd | sed '2,5d'

# 删除第 2 行
nl /etc/passwd | sed '2d'

# 删除第 3 到最后一行
nl /etc/passwd | sed '3,$d'

# 在第二行后(即在第三行)加 “drink tea” 字样
nl /etc/passwd | sed '2a drink tea'

# 在第二行前
nl /etc/passwd | sed '2i drink tea'



# ====================================================================================
# 示例：以行为单位的替换与显示
# ====================================================================================
# 将第 2-5 行的内容取代成为 "No 2-5 number"
nl /etc/passwd | sed '2,5c No 2-5 number'



# ====================================================================================
# 示例：提取指定区间内的内容
# ====================================================================================
# 仅列出 /etc/passwd 文件内的第 5-7 行
nl /etc/passwd | sed -n '5,7p'



# ====================================================================================
# 示例：数据的搜寻并显示
# ====================================================================================
# 搜索 /etc/passwd 有root关键字的行；如果root找到，除了输出所有行，还会输出匹配行
nl /etc/passwd | sed '/root/p'

# 使用-n的时候将只打印包含模板的行
nl /etc/passwd | sed -n '/root/p'



# ====================================================================================
# 示例：数据的搜寻并删除
# ====================================================================================
# 删除/etc/passwd 所有包含root的行，其他行输出
nl /etc/passwd | sed '/root/d'



# ====================================================================================
# 示例：数据的搜寻并执行命令
# ====================================================================================
# 搜索/etc/passwd 找到root对应的行，执行后面花括号中的一组命令，
# 每个命令之间用分号分隔，这里把bash替换为blueshell，再输出这行

# 最后的q是退出
nl /etc/passwd | sed -n '/root/{s/bash/blueshell/;p;q}'



# ====================================================================================
# 示例：数据的搜寻并替换
# ====================================================================================
# 除了整行的处理模式之外， sed 还可以用行为单位进行部分数据的搜寻并取代
sed 's/要被取代的字串/新的字串/g'

# 将 IP 前面的部分予以删除
/sbin/ifconfig eth0 | grep 'inet addr' | sed 's/^.*addr://g'

# 192.168.1.100 Bcast:192.168.1.255 Mask:255.255.255.0

# 将 IP 后面的部分予以删除
/sbin/ifconfig eth0 | grep 'inet addr' | sed 's/^.*addr://g' | sed 's/Bcast.*$//g'



# ====================================================================================
# 示例：多点编辑，-e 表示多点编辑
# ====================================================================================
# 删除/etc/passwd第三行到末尾的数据，并把bash替换为blueshell
nl /etc/passwd | sed -e '3,$d' -e 's/bash/blueshell/'



# ====================================================================================
# 示例：直接修改文件内容
# ====================================================================================
cat tmp.txt

# output:
#-------------------------------------------------------------------------------------
#runoob.
#google.
#taobao.
#facebook.
#zhihu-
#weibo-

# 利用 sed 将 tmp.txt 内每一行结尾若为 . 则换成 !
sed -i 's/\.$/\!/g' tmp.txt

cat tmp.txt
#runoob!
#google!
#taobao!
#facebook!
#zhihu-
#weibo-

# 利用 sed 直接在 tmp.txt 最后一行加入 # This is a test
sed -i '$a # This is a test' tmp.txt

