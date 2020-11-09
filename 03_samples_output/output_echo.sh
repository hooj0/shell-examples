#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-10
# copyright by hoojo@2018
# @changelog Added output `echo` shell command example



# =================================================================
#		echo —— 输出命令之后的文本到标准输出或文件
# =================================================================
# echo 可以分为以下几种输出展开形式：
#   字符串展开，输出字符串
#   路径名展开，输出目录路径文件名
#   波浪线展开，当前用户Home目录
#   算术表达式展开，可以输出一些数学运算的结果
#   花括号展开，可以循环匹配输出
#   参数展开，可以输出参数
#   命令替换，执行静态的命令行
# -----------------------------------------------------------------
# echo 展开控制输出
#   变量控制
#   引号控制
# -----------------------------------------------------------------





# =================================================================
# 示例：字符串展开，输出字符串
# =================================================================
echo Hello World

# output:
#-------------------------------------------------------------------
# Hello World


# =================================================================
# 示例：输出 "Hello World"，单词间用换行符分隔
# =================================================================
echo -ne "Hello\nWorld\n"


# output:
#-------------------------------------------------------------------
#Hello
#World



# =================================================================
# 示例：路径名展开，输出目录路径文件名
# =================================================================
# 输出当前目录文件名称，* 相当于是路径名展开，不会显示隐藏文件
echo *

# output:
#-------------------------------------------------------------------
#dir1 dir2 example.txt install-options.txt lazy-file.txt ls-error.txt ls-file.txt ls-output.txt test-sym2



# =================================================================
# 示例：进入练习场，路径名展开，输出目录路径文件名
# =================================================================
cd .playground

# 输出所有 . 开头的文件
echo .*

ls -d .* | less
# 排除当前目录和上级目录指向（以圆点开头，第二个字符不包含圆点，再包含至少一个字符， 并且这个字符之后紧接着任意多个字符的文件名。）
ls -d .[!.]?*

# 输出 txt 结尾文件名
echo *.txt
# 输出 ls 开头文件名
echo ls*

# 使用通配符表达式
echo [[:upper:]]*

# 输出目录组成
echo /usr/*/share



# =================================================================
# 示例：波浪线展开，当前用户Home目录
# =================================================================
echo ~

# output:
#-------------------------------------------------------------------
# /c/Users/Administrator



# =================================================================
# 示例：算术表达式展开，可以输出一些数学运算的结果
#-------------------------------------------------------------------
# 算术表达式展开使用这种格式： $((expression))
#-------------------------------------------------------------------
# 算术操作符
#-------------------------------------------------------------------
# 操作符 	说明
#-------------------------------------------------------------------
#  + 	加
#  - 	减
#  * 	乘
#  / 	除（但是记住，因为展开只是支持整数除法，所以结果是整数。）
#  % 	取余，只是简单的意味着，“余数”
#  ** 	取幂
# =================================================================
echo $((2 + 2))

# 嵌套使用，优先顺序
echo $(($((5**2)) * 3))
# 和上面一样的结果
echo $(((5**2) * 3))


# output:
#-------------------------------------------------------------------
# 4
# 75



# =================================================================
# 示例：花括号展开，可以循环匹配输出
# =================================================================
# 数组形式
echo Front-{A,B,C}-Back

# output:
#-------------------------------------------------------------------
# Front-A-Back Front-B-Back Front-C-Back

# 区间形式
echo Number_{1..5}

# output:
#-------------------------------------------------------------------
# Number_1 Number_2 Number_3 Number_4 Number_5

# 倒序展开
echo {Z..A}

# output:
#-------------------------------------------------------------------
# Z Y X W V U T S R Q P O N M L K J I H G F E D C B A

# 嵌套模式
echo a{A{1,2},B{3,4}}b

# output:
#-------------------------------------------------------------------
# aA1b aA2b aB3b aB4b


# 创建2007-2009 1-12 月的文件夹
mkdir {2007..2009}-0{1..9} {2007..2009}-{10..12}
ls

# output:
#-------------------------------------------------------------------
#2007-01 2007-07 2008-01 2008-07 2009-01 2009-07
#2007-02 2007-08 2008-02 2008-08 2009-02 2009-08
#2007-03 2007-09 2008-03 2008-09 2009-03 2009-09
#2007-04 2007-10 2008-04 2008-10 2009-04 2009-10
#2007-05 2007-11 2008-05 2008-11 2009-05 2009-11
#2007-06 2007-12 2008-06 2008-12 2009-06 2009-12



# =================================================================
# 示例：参数展开，可以输出参数
# =================================================================
echo $HOME

# 展开环境变量参数数据
echo $PATH

# 输出所有环境变量
printenv | less
env

# output:
#-------------------------------------------------------------------
#/c/Users/Administrator



# =================================================================
# 示例：命令替换，执行静态的命令行
# =================================================================
# 输出文件名称
echo $(ls)

# output:
#-------------------------------------------------------------------
# 00_samples_started 01_samples_basic 01_samples_help_man 02_samples_text

# 查看某个命令行的list信息，把 `which cp` 作为参数传递给ls
ls -l $(which cp)
# 相同效果
ls -l `which cp`
# output:
#-------------------------------------------------------------------
# -rwxr-xr-x 1 Administrator 197121 101288 Jun  1 11:03 /usr/bin/cp

# 查看 /usr/bin/目录下 包含 zip 的文件信息
file $(ls /usr/bin/* | grep zip)
# output:
#-------------------------------------------------------------------
#/usr/bin/bunzip2.exe:      PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#/usr/bin/bzip2.exe:        PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#/usr/bin/bzip2recover.exe: PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#/usr/bin/funzip.exe:       PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#/usr/bin/gpg-zip:          POSIX shell script, ASCII text executable
#/usr/bin/gunzip:           POSIX shell script, ASCII text executable
#/usr/bin/gzip.exe:         PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#/usr/bin/unzip.exe:        PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#/usr/bin/unzipsfx.exe:     PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#/usr/bin/zipgrep:          POSIX shell script, ASCII text executable
#/usr/bin/zipinfo.exe:      PE32+ executable (console) x86-64 (stripped to external PDB), for MS Windows
#zipdetails*:               cannot open `zipdetails*' (No such file or directory)



# =================================================================
# 示例：展开输出控制
# =================================================================
# 输出空格
echo "this is a    test"

# 输出特殊字符串
echo 'The total is $100.00'
echo text ~/*.txt {a,b} $(echo foo) $((2+2)) $USER
echo "text ~/*.txt {a,b} $(echo foo) $((2+2)) $USER"
# 原样输出
echo 'text ~/*.txt {a,b} $(echo foo) $((2+2)) $USER'

# 组织分割
#ls -l two words.txt
ls -l "two words.txt"

# 在双引号中，参数展开、算术表达式展开和命令替换仍然有效
echo "$USER $((2+2)) $(cal)"


# =================================================================
# 转义字符，使用 \ 进行转义
# =================================================================
# 转义序列 	    含义
#------------------------------------------------------------------
# \a 	    响铃（”警告”－导致计算机嘟嘟响）
# \b 	    退格符
# \n 	    新的一行。在类 Unix 系统中，产生换行。
# \r 	    回车符
# \t 	    制表符
#------------------------------------------------------------------
echo "The balance for user $USER is: \$5.00"
mv bad\&filename good_filename

# output:
#------------------------------------------------------------------
#





read exits