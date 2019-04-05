#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-10-25
# copyright by hoojo@2018
# @changelog Added text `tr` shell command example



# =================================================================
#		tr —— 转换或删除字符
# =================================================================
# 用法：tr [选项]... SET1 [SET2]
# 从标准输入中替换、缩减和/或删除字符，并将结果写到标准输出。
#
# 基于字符的查找和替换操作
#   tr 命令操作标准输入，并把结果输出到标准输出
#   tr 命令接受两个参数：要被转换的字符集以及 相对应的转换后的字符集
# -----------------------------------------------------------------
# -c, --complement： 反选设定字符。也就是符合 SET1 的部份不做处理，不符合的剩余部份才进行转换
# -d, --delete：     删除指令字符
# -s, --squeeze-repeats：缩减连续重复的字符成指定的单个字符
# -t, --truncate-set1：  削减 SET1 指定范围，使之与 SET2 设定长度相等
# -----------------------------------------------------------------
# 一个枚举列表。例如， ABCDEFGHIJKLMNOPQRSTUVWXYZ
# 一个字符域。例如，A-Z 。注意这种方法有时候面临与其它命令相同的问题，归因于语系的排序规则，因此应该谨慎使用。
# POSIX 字符类。例如，[:upper:]
# -----------------------------------------------------------------
# 字符集合的范围：
#
# \NNN          八进制值的字符 NNN (1 to 3 为八进制值的字符)
# \\            反斜杠
# \a Ctrl-G     铃声
# \b Ctrl-H     退格符
# \f Ctrl-L     走行换页
# \n Ctrl-J     新行
# \r Ctrl-M     回车
# \t Ctrl-I     tab键
# \v Ctrl-X     水平制表符
#
# CHAR1-CHAR2    字符范围从 CHAR1 到 CHAR2 的指定，范围的指定以 ASCII 码的次序为基础，只能由小到大，不能由大到小。
# [CHAR*]        这是 SET2 专用的设定，功能是重复指定的字符到与 SET1 相同长度为止
# [CHAR*REPEAT]  这也是 SET2 专用的设定，功能是重复指定的字符到设定的 REPEAT 次数为止(REPEAT 的数字采 8 进位制计算，以 0 为开始)
# [:alnum:]     所有字母字符与数字
# [:alpha:]     所有字母字符
# [:blank:]     所有水平空格
# [:cntrl:]     所有控制字符
# [:digit:]     所有数字
# [:graph:]     所有可打印的字符(不包含空格符)
# [:lower:]     所有小写字母
# [:print:]     所有可打印的字符(包含空格符)
# [:punct:]     所有标点字符
# [:space:]     所有水平与垂直空格符
# [:upper:]     所有大写字母
# [:xdigit:]    所有 16 进位制的数字
# [=CHAR=]      所有符合指定的字符(等号里的 CHAR，代表你可自订的字符)
# -----------------------------------------------------------------




# -----------------------------------------------------------------
#   准备工作
# -----------------------------------------------------------------
cat << EOF > example.txt
Hello World Foo Bar Baz!
EOF



# =================================================================
#	 示例1：把所有小写字母转换成大写字母
# =================================================================
cat example.txt | tr 'a-z' 'A-Z'


# output:
#-------------------------------------------------------------------
# HELLO WORLD FOO BAR BAZ!




# =================================================================
#	 示例2：把所有的空格都转换为换行符
# =================================================================
cat example.txt | tr ' ' '\n'


# output:
#-------------------------------------------------------------------
#Hello
#World
#Foo
#Bar
#Baz!



# =================================================================
# 示例：把小写字母转换成大写字母就是 换字
# =================================================================
echo "lowercase letters" | tr a-z A-Z

# output:
#-------------------------------------------------------------------
#LOWERCASE LETTERS


# =================================================================
# 示例：把多个字符转换为单个字符
# =================================================================
# 把小学字符转换为 A
echo "lowercase letters" | tr [:lower:] A
#-> AAAAAAAAA AAAAAAA


# 每行末尾的回车符需要被删除
# dos_file 是需要被转换的文件，unix_file 是转换后的结果
tr -d '\r' < dos_file > unix_file


# =================================================================
# 示例：利用tr实现编码环，用同样的表达式进行两次替换可以换回原来的文本
#-------------------------------------------------------------------
# tr 命令的一个有趣的用法是执行 ROT13文本编码。
# ROT13是一款微不足道的基于一种简易的替换暗码的 加密类型。
# 把 ROT13称为“加密”是过誉了；称其为“文本模糊处理”则更准确些。
# 有时候它被用来隐藏文本中潜在的攻击内容。
# 这个方法就是简单地把每个字符在字母表中向前移动13位。
# 因为移动的位数是可能的26个字符的一半， 所以对文本再次执行这个算法，
# 就恢复到了它最初的形式。通过 tr 命令来执行这种编码：
# =================================================================
# 执行替换
echo secret text | tr a-zA-Z n-za-mN-ZA-M   # frperg grkg
# 将结果再次替换
echo frperg grkg | tr a-zA-Z n-za-mN-ZA-M   # secret text



# =================================================================
# 示例：tr 使用-s 选项，tr 命令能“挤压”（删除）重复的字符实例
# =================================================================
# 挤压删除多余的 ab 字符
echo "aaabbbccc" | tr -s ab # abccc

# 重复的字符必须是相邻的才能挤压
echo "abcabcabc" | tr -s ab # abcabcabc