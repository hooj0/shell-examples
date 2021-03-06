#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-08
# copyright by hoojo@2018
# @changelog Added text `grep` shell command example



# =====================================================================================
#		grep —— 在 文件中查找文本
# =====================================================================================
# 在文件中查找文本。你可以用 grep 去查找匹配一个或多个正则表达式的文本行，然后输出这些行。
# =====================================================================================
# grep 选项
# -------------------------------------------------------------------------------------
# 选项 	描述
# -------------------------------------------------------------------------------------
# -i 	忽略大小写。不会区分大小写字符。也可用--ignore-case 来指定。
# -v 	不匹配。通常，grep 程序会打印包含匹配项的文本行。这个选项导致 grep 程序只会打印不包含匹配项的文本行。也可用--invert-match 来指定。
# -c 	打印匹配的数量（或者是不匹配的数目，若指定了-v 选项），而不是文本行本身。 也可用--count 选项来指定。
# -l 	打印包含匹配项的文件名，而不是文本行本身，也可用--files-with-matches 选项来指定。
# -L 	相似于-l 选项，但是只是打印不包含匹配项的文件名。也可用--files-without-match 来指定。
# -n 	在每个匹配行之前打印出其位于文件中的相应行号。也可用--line-number 选项来指定。
# -h 	应用于多文件搜索，不输出文件名。也可用--no-filename 选项来指定。
# =====================================================================================
# -a 或 --text : 不要忽略二进制的数据。
# -A<显示行数> 或 --after-context=<显示行数> : 除了显示符合范本样式的那一列之外，并显示该行之后的内容。
# -b 或 --byte-offset : 在显示符合样式的那一行之前，标示出该行第一个字符的编号。
# -B<显示行数> 或 --before-context=<显示行数> : 除了显示符合样式的那一行之外，并显示该行之前的内容。
# -c 或 --count : 计算符合样式的列数。
# -C<显示行数> 或 --context=<显示行数>或-<显示行数> : 除了显示符合样式的那一行之外，并显示该行之前后的内容。
# -d <动作> 或 --directories=<动作> : 当指定要查找的是目录而非文件时，必须使用这项参数，否则grep指令将回报信息并停止动作。
# -e<范本样式> 或 --regexp=<范本样式> : 指定字符串做为查找文件内容的样式。
# -E 或 --extended-regexp : 将样式为延伸的普通表示法来使用。
# -f<规则文件> 或 --file=<规则文件> : 指定规则文件，其内容含有一个或多个规则样式，让grep查找符合规则条件的文件内容，格式为每行一个规则样式。
# -F 或 --fixed-regexp : 将样式视为固定字符串的列表。
# -G 或 --basic-regexp : 将样式视为普通的表示法来使用。
# -h 或 --no-filename : 在显示符合样式的那一行之前，不标示该行所属的文件名称。
# -H 或 --with-filename : 在显示符合样式的那一行之前，表示该行所属的文件名称。
# -i 或 --ignore-case : 忽略字符大小写的差别。
# -l 或 --file-with-matches : 列出文件内容符合指定的样式的文件名称。
# -L 或 --files-without-match : 列出文件内容不符合指定的样式的文件名称。
# -n 或 --line-number : 在显示符合样式的那一行之前，标示出该行的列数编号。
# -q 或 --quiet或--silent : 不显示任何信息。
# -r 或 --recursive : 此参数的效果和指定"-d recurse"参数相同。
# -s 或 --no-messages : 不显示错误信息。
# -v 或 --revert-match : 显示不包含匹配文本的所有行。
# -V 或 --version : 显示版本信息。
# -w 或 --word-regexp : 只显示全字符合的列。
# -x --line-regexp : 只显示全列符合的列。
# -y : 此参数的效果和指定"-i"参数相同。
# -------------------------------------------------------------------------------------
# POSIX 字符集
# =====================================================================================
# 字符集       	说明
# -------------------------------------------------------------------------------------
#[:alnum:] 	字母数字字符。在 ASCII 中，等价于：[A-Za-z0-9]
#[:word:] 	与[:alnum:]相同, 但增加了下划线字符。
#[:alpha:] 	字母字符。在 ASCII 中，等价于：[A-Za-z]
#[:blank:] 	包含空格和 tab 字符。
#[:cntrl:] 	ASCII 的控制码。包含了0到31，和127的 ASCII 字符。
#[:digit:] 	数字0到9
#[:graph:] 	可视字符。在 ASCII 中，它包含33到126的字符。
#[:lower:] 	小写字母。
#[:punct:] 	标点符号字符。在 ASCII 中，等价于：[-!"#$%&'()*+,./:;<=>?@[\\\]_`{|}~]
#[:print:] 	可打印的字符。在[:graph:]中的所有字符，再加上空格字符。
#[:space:] 	空白字符，包括空格、tab、回车、换行、vertical tab 和 form feed.在 ASCII 中， 等价于：[ \t\r\n\v\f]
#[:upper:] 	大写字母。
#[:xdigit:] 	用来表示十六进制数字的字符。在 ASCII 中，等价于：[0-9A-Fa-f]
# -------------------------------------------------------------------------------------




# ======================================================================================
# 示例：在文件中查找指定字符串
# ======================================================================================
grep admin /etc/passwd

# output:
#---------------------------------------------------------------------------------------
# gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin


# ======================================================================================
# 示例：查找特定字符，忽略大小写、并且只查询单词，递归查询
# 参数 -i 强制忽略大小写。
# 参数 -w 表示只查找单词。
# 参数 -r 则被用来递归地查找指定文件夹下的所有文件
# ======================================================================================
grep admin -iw -r /etc/

# output:
#---------------------------------------------------------------------------------------
#/etc/pam.d/login:# and a static (admin-editable) part from /etc/motd.
#/etc/sudoers:# Members of the admin group may gain root privileges
#/etc/sudoers:%admin ALL=(ALL) ALL
#/etc/passwd:gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin




# ======================================================================================
# 示例：每行都会附上文件名，来阅读检查目录下所有文件的内容
# ======================================================================================
grep . *


# output:
#---------------------------------------------------------------------------------------
#a.txt:aaa
#a.txt:bbbb
#a.txt:cccc
#a.txt:dddd
#b.txt:aaa
#b.txt:bbbb
#b.txt:cccc
#b.txt:dddd


# ======================================================================================
# 示例：在所有 dirlist*.txt 文件中 查询所有匹配包含 zip 的字符串的数据
# ======================================================================================
# 第一个元字符是圆点字符，其被用来匹配任意字符
grep -h '.zip' dirlist*.txt


# ======================================================================================
# 示例：锚点，在正则表达式中，插入符号和美元符号被看作是锚点。
# 这意味着正则表达式 只有在文本行的开头或末尾被找到时，才算发生一次匹配。
# ======================================================================================
# 匹配以zip开头的字符串
grep -h '^zip' dirlist*.txt

# 匹配以zip结尾的字符串
grep -h 'zip$' dirlist*.txt

# 匹配以zip开头并结尾的字符串
grep -h '^zip$' dirlist*.txt

# 匹配行首和行尾没有字符串的空行
grep -h '^$' dirlist*.txt

# 匹配 包含 j 和 r 的5个长度的单词，忽略大小写
grep -i '^..j.r$' /usr/share/dict/words


# ======================================================================================
# 示例：中括号表达式和字符类
# ======================================================================================
# 匹配包含字符串“bzip”或者“gzip”的任意行
grep -h '[bg]zip' dirlist*.txt


# ======================================================================================
# 示例：否定，取反（排除）、不匹配指定字符
# ======================================================================================
# 匹配以任意字符串开头的zip的单词，但不匹配 zip
grep -h '[^bg]zip' dirlist*.txt


# ======================================================================================
# 示例：传统的字符区域
# ======================================================================================
# 要构建一个正则表达式，在列表中找到每个以大写字母开头的文件，可以这样做
grep -h '^[ABCDEFGHIJKLMNOPQRSTUVWXZY]' dirlist*.txt

# 或者
grep -h '^[A-Z]' dirlist*.txt

# 匹配数字和字母开头的单词
grep -h '^[A-Za-z0-9]' dirlist*.txt

# 匹配全大写字母的单词
grep -h '[A-Z]' dirlist*.txt

# 匹配包含一个大写字母的文件名
grep -h '[-AZ]' dirlist*.txt


# ======================================================================================
# 示例：POSIX 字符集，POSIX 是正则表达式都无法表达或满足命令的情况下的一个补充方式
# ======================================================================================
# 把这个 LANG 变量设置为 POSIX，来更改 locale，使其使用传统的 Unix 行为
# 通过把这条语句添加到你的.bashrc 文件中，可以使这个更改永久有效
export LANG=POSIX

# POSIX 基本正则 Vs.扩展的正则表达式
# POSIX 把正则表达式的实现分成了两类： 基本正则表达式（BRE）和扩展的正则表达式（ERE）

# BRE 可以辨别以下元字符：^ $ . [ ] *
# 其它的所有字符被认为是文本字符。ERE 添加了以下元字符（以及与其相关的功能）: ( ) { } ? + |
echo "AAA" | grep -E 'AAA|BBB'

# 匹配以“bz”，或“gz”，或“zip”开头的文件名
grep -Eh '^(bz|gz|zip)' dirlist*.txt
# 匹配任意以“bz”开头，或包含“gz”，或包含“zip”的文件名
grep -Eh '^bz|gz|zip' dirlist*.txt


# ======================================================================================
# 示例：限定符，? 匹配零个或一个元素
# ======================================================================================
# 匹配电话号码
# ^\(?[0-9][0-9][0-9]\)?  [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$
echo "(555) 123-4567" | grep -E '^\(?[0-9][0-9][0-9]\)? [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$'
echo "555 123-4567" | grep -E '^\(?[0-9][0-9][0-9]\)? [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$'
echo "AAA 123-4567" | grep -E '^\(?[0-9][0-9][0-9]\)? [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$'


# ======================================================================================
# 示例：* 匹配零个或多个元素
# * 被用来表示一个可选的字符，匹配的字符可以出现 任意多次
# ======================================================================================
# 要知道是否一个字符串是一句话；
# 也就是说，字符串开始于 一个大写字母，然后包含任意多个大写和小写的字母和空格，最后以句号收尾
# [[:upper:]][[:upper:][:lower:] ]*.

echo "This works." | grep -E '[[:upper:]][[:upper:][:lower:] ]*\.'
echo "This Works." | grep -E '[[:upper:]][[:upper:][:lower:] ]*\.'


# ======================================================================================
# 示例：+ 匹配一个或多个元素
# + 元字符的作用与 * 非常相似，除了它要求前面的元素至少出现一次匹配
# ======================================================================================
# 匹配 那些由一个或多个字母字符组构成的文本行，字母字符之间由单个空格分开
echo "This that" | grep -E '^([[:alpha:]]+ ?)+$'
echo "a b c" | grep -E '^([[:alpha:]]+ ?)+$'


# ======================================================================================
# 示例：{ } 匹配特定个数的元素
# { 和 } 元字符都被用来表达要求匹配的最小和最大数目
# ======================================================================================
# 指定匹配的数目
#---------------------------------------------------------------------------------------
# 限定符   	    意思
#---------------------------------------------------------------------------------------
# {n} 	    匹配前面的元素，如果它确切地出现了 n 次。
# {n,m} 	匹配前面的元素，如果它至少出现了 n 次，但是不多于 m 次。
# {n,} 	    匹配前面的元素，如果它出现了 n 次或多于 n 次。
# {,m} 	    匹配前面的元素，如果它出现的次数不多于 m 次。
# ======================================================================================
# 匹配电话号码： ^\(?[0-9][0-9][0-9]\)?  [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$
# 简化为：^\(?[0-9]{3}\)?  [0-9]{3}-[0-9]{4}$
echo "(555) 123-4567" | grep -E '^\(?[0-9]{3}\)? [0-9]{3}-[0-9]{4}$'
echo "555 123-4567" | grep -E '^\(?[0-9]{3}\)? [0-9]{3}-[0-9]{4}$'


# ======================================================================================
# 示例：grep 正则练习场
# ======================================================================================
cd .playground
# 创建一个包含10个电话号码的名为 phonelist.txt 的文件
for i in {1..10}; do echo "(${RANDOM:0:3}) ${RANDOM:0:3}-${RANDOM:0:4}" >> phonelist.txt; done

# 查找无效的号码, -v 选项来产生相反的匹配
grep -Ev '^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$' phonelist.txt