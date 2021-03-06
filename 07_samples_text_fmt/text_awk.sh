#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-11-30
# copyright by hoojo@2018
# @changelog Added text `awk` shell command example



# ===========================================================================================
#		awk —— 分隔文本输出
# ===========================================================================================
# awk 是文本操作最有用的命令。它按行处理整个文件，它默认用空格把每一行分隔成很多字段。
# 最常用的语法是：
# awk '/search_pattern/ { action_to_take_if_pattern_matches; }' file_to_parse
# -------------------------------------------------------------------------------------------




# ===========================================================================================
# 示例：以 /etc/passwd 文件为例，该文件包含以下数据：
# ===========================================================================================
# 我们想从这个文件中过滤出每一行的 username 部分。
# -F 参数用来指明用来把行内内容分隔的分隔符。
# 这个例子中，我们用:来分隔。{ print $1 } 意思是输出行内第一个匹配的字段。

awk -F ':' '{print $1}' /etc/passwd

# output:
#--------------------------------------------------------------------------------------------
# 


# ===========================================================================================
# 示例：计算文本文件第三列中所有数的和（可能比同等作用的 Python 代码快三倍且代码量少三倍）
# ===========================================================================================
awk '{ x += $3 } END { print x }' myfile

# output:
#--------------------------------------------------------------------------------------------
#



# ===========================================================================================
# 示例：统计当前目录下文件或文件夹的大小（第5列）总和
# ===========================================================================================
ll | awk '{ x += $5 } END { print x }'

#
find . -type f -ls | awk '{ x += $7 } END { print x }'

# output:
#--------------------------------------------------------------------------------------------
#



# ===========================================================================================
# 示例：统计当前目录下文件的大小（第7列）总和
# ===========================================================================================
find . -type f -ls | awk '{ x += $7 } END { print x }'

# output:
#--------------------------------------------------------------------------------------------
#



# ===========================================================================================
# 示例：准备数据
# ===========================================================================================
cat << EOF > tmp.txt
2 this is a test
3 Are you like awk
This's a test
10 There are orange,apple,mongo
EOF


# ===========================================================================================
# 示例：提取文件中的1/4 列数据
# ===========================================================================================
# 每行按 空格或TAB 分割，输出文本中的1、4项
awk '{print $1,$4}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 a
#3 like
#This's
#10 orange,apple,mongo

# 格式化输出
awk '{printf "%-8s %-10s\n",$1,$4}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2        a
#3        like
#This's
#10       orange,apple,mongo



# ===========================================================================================
# 示例：使用 "," 分割
# ===========================================================================================
awk -F , '{print $1,$2}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 this is a test
#3 Are you like awk
#This's a test
#10 There are orange apple


# 或者使用内建变量
awk 'BEGIN{FS=","} {print $1,$2}' tmp.txt


# 使用多个分隔符.先使用空格分割，然后对分割结果再使用","分割
awk -F '[ ,]' '{print $1,$2,$5}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 this test
#3 Are awk
#This's a
#10 There apple



# ===========================================================================================
# 示例：使用变量
# ===========================================================================================
awk -va=1 -vb=5 '{print $1,$1+a,$1+b}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 3 7
#3 4 8
#This's 1 5
#10 11 15


awk -va=1 -vb=s '{print $1,$1+a,$1b}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 3 2s
#3 4 3s
#This's 1 This'ss
#10 11 10s



# ===========================================================================================
# 示例：运算符
#--------------------------------------------------------------------------------------------
#运算符	描述
#--------------------------------------------------------------------------------------------
# = += -= *= /= %= ^= **=	赋值
# ?:	                    C条件表达式
# ||	                    逻辑或
# &&	                    逻辑与
# ~ ~!	                    匹配正则表达式和不匹配正则表达式
# < <= > >= != ==	        关系运算符
# 空格	                    连接
# + -	                    加，减
# * / %	                    乘，除与求余
# + - !	                    一元加，减和逻辑非
# ^ ***	                    求幂
# ++ --	                    增加或减少，作为前缀或后缀
# $	                        字段引用
# in	                    数组成员
# ===========================================================================================
# 过滤第一列大于2的行
awk '$1>2' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#3 Are you like awk
#This's a test
#10 There are orange,apple,mongo


# 过滤第一列等于2的行
awk '$1==2 {print $1,$3}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 is


# 过滤第一列大于2并且第二列等于'Are'的行
awk '$1>2 && $2=="Are" {print $1,$2,$3}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#3 Are you



# ===========================================================================================
# 示例：内建变量
# -------------------------------------------------------------------------------------------
# 变量	            描述
# -------------------------------------------------------------------------------------------
# $n	        当前记录的第n个字段，字段间由FS分隔
# $0	        完整的输入记录
# ARGC	        命令行参数的数目
# ARGIND	    命令行中当前文件的位置(从0开始算)
# ARGV	        包含命令行参数的数组
# CONVFMT	    数字转换格式(默认值为%.6g)ENVIRON环境变量关联数组
# ERRNO	        最后一个系统错误的描述
# FIELDWIDTHS	字段宽度列表(用空格键分隔)
# FILENAME	    当前文件名
# FNR	        各文件分别计数的行号
# FS	        字段分隔符(默认是任何空格)
# IGNORECASE	如果为真，则进行忽略大小写的匹配
# NF	        一条记录的字段的数目
# NR	        已经读出的记录数，就是行号，从1开始
# OFMT	        数字的输出格式(默认值是%.6g)
# OFS	        输出记录分隔符（输出换行符），输出时用指定的符号代替换行符
# ORS	        输出记录分隔符(默认值是一个换行符)
# RLENGTH	    由match函数所匹配的字符串的长度
# RS	        记录分隔符(默认是一个换行符)
# RSTART	    由match函数所匹配的字符串的第一个位置
# SUBSEP	    数组下标分隔符(默认值是/034)
# ===========================================================================================
awk 'BEGIN{printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n","FILENAME","ARGC","FNR","FS","NF","NR","OFS","ORS","RS";printf "---------------------------------------------\n"} {printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n",FILENAME,ARGC,FNR,FS,NF,NR,OFS,ORS,RS}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#FILENAME ARGC  FNR   FS   NF   NR  OFS  ORS   RS
#---------------------------------------------
#tmp.txt    2    1         5    1
#tmp.txt    2    2         5    2
#tmp.txt    2    3         3    3
#tmp.txt    2    4         4    4


awk -F\' 'BEGIN{printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n","FILENAME","ARGC","FNR","FS","NF","NR","OFS","ORS","RS";printf "---------------------------------------------\n"} {printf "%4s %4s %4s %4s %4s %4s %4s %4s %4s\n",FILENAME,ARGC,FNR,FS,NF,NR,OFS,ORS,RS}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#FILENAME ARGC  FNR   FS   NF   NR  OFS  ORS   RS
#---------------------------------------------
#tmp.txt    2    1    '    1    1
#tmp.txt    2    2    '    1    2
#tmp.txt    2    3    '    2    3
#tmp.txt    2    4    '    1    4


# 输出顺序号 NR, 匹配文本行号
awk '{print NR,FNR,$1,$2,$3}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#1 1 2 this is
#2 2 3 Are you
#3 3 This's a test
#4 4 10 There are


# 指定输出分割符
awk '{print $1,$2,$5}' OFS=" | " tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 | this | test
#3 | Are | awk
#This's | a |
#10 | There |



# ===========================================================================================
# 示例：使用正则，字符串匹配
# ===========================================================================================
# 输出第二列包含 "th"，并打印第二列与第四列
# ~ 表示模式开始， /xxx/ 中是模式
awk '$2 ~ /th/ {print $2,$4}' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#this a


# 输出包含 "re" 的行
awk '/re/ ' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#3 Are you like awk
#10 There are orange,apple,mongo


# ===========================================================================================
# 示例：忽略大小写
# ===========================================================================================
awk 'BEGIN{IGNORECASE=1} /this/' tmp.txt

# output:
#--------------------------------------------------------------------------------------------
#2 this is a test
#This's a test


# ===========================================================================================
# 示例：模式取反
# ===========================================================================================
awk '$2 !~ /th/ {print $2,$4}' tmp.txt

awk '!/th/ {print $2,$4}' log.txt

# output:
#--------------------------------------------------------------------------------------------
#Are like
#a
#There orange,apple,mongo


# ===========================================================================================
# 示例：awk脚本
# -------------------------------------------------------------------------------------------
# 关于awk脚本，我们需要注意两个关键词BEGIN和END。
#   BEGIN{ 这里面放的是执行前的语句 }
#   END {这里面放的是处理完所有的行后要执行的语句 }
#   {这里面放的是处理每一行时要执行的语句}
# ===========================================================================================
# 准备数据
cat << EOF > score.txt
Marry   2143 78 84 77
Jack    2321 66 78 45
Tom     2122 48 77 71
Mike    2537 87 97 95
Bob     2415 40 57 62
EOF

# 准备脚本
cat cal.awk

#!/bin/awk -f
#运行前
BEGIN {
    math = 0
    english = 0
    computer = 0

    printf "NAME    NO.   MATH  ENGLISH  COMPUTER   TOTAL\n"
    printf "---------------------------------------------\n"
}

#运行中
{
    math+=$3
    english+=$4
    computer+=$5
    printf "%-6s %-6s %4d %8d %8d %8d\n", $1, $2, $3,$4,$5, $3+$4+$5
}

#运行后
END {
    printf "---------------------------------------------\n"
    printf "  TOTAL:%10d %8d %8d \n", math, english, computer
    printf "AVERAGE:%10.2f %8.2f %8.2f\n", math/NR, english/NR, computer/NR
}


awk -f cal.awk score.txt

# output:
#--------------------------------------------------------------------------------------------
#NAME    NO.   MATH  ENGLISH  COMPUTER   TOTAL
#---------------------------------------------
#Marry  2143     78       84       77      239
#Jack   2321     66       78       45      189
#Tom    2122     48       77       71      196
#Mike   2537     87       97       95      279
#Bob    2415     40       57       62      159
#---------------------------------------------
#  TOTAL:       319      393      350
#AVERAGE:     63.80    78.60    70.00



# ===========================================================================================
# 示例：
# ===========================================================================================
# 计算文件大小
ls -l *.txt | awk '{sum+=$6} END {print sum}'

# 从文件中找出长度大于25的行
awk 'length>25' tmp.txt

# 打印九九乘法表
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# output:
#--------------------------------------------------------------------------------------------
#


