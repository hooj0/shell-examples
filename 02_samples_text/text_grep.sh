#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-08
# copyright by hoojo@2018



# =================================================================
#		grep —— 在 文件中查找文本
# =================================================================
# 在文件中查找文本。你可以用 grep 去查找匹配一个或多个正则表达式的文本行，然后输出这些行。
# =================================================================
# grep 选项
# -----------------------------------------------------------------
# 选项 	描述
# -----------------------------------------------------------------
# -i 	忽略大小写。不会区分大小写字符。也可用--ignore-case 来指定。
# -v 	不匹配。通常，grep 程序会打印包含匹配项的文本行。这个选项导致 grep 程序只会打印不包含匹配项的文本行。也可用--invert-match 来指定。
# -c 	打印匹配的数量（或者是不匹配的数目，若指定了-v 选项），而不是文本行本身。 也可用--count 选项来指定。
# -l 	打印包含匹配项的文件名，而不是文本行本身，也可用--files-with-matches 选项来指定。
# -L 	相似于-l 选项，但是只是打印不包含匹配项的文件名。也可用--files-without-match 来指定。
# -n 	在每个匹配行之前打印出其位于文件中的相应行号。也可用--line-number 选项来指定。
# -h 	应用于多文件搜索，不输出文件名。也可用--no-filename 选项来指定。
# -----------------------------------------------------------------




# =================================================================
# 示例：在文件中查找指定字符串
# =================================================================
grep admin /etc/passwd

# output:
#-------------------------------------------------------------------
# gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin


# =================================================================
# 示例：查找特定字符，忽略大小写、并且只查询单词，递归查询
# 参数 -i 强制忽略大小写。
# 参数 -w 表示只查找单词。
# 参数 -r 则被用来递归地查找指定文件夹下的所有文件
# =================================================================
grep admin -iw -r /etc/

# output:
#-------------------------------------------------------------------
#/etc/pam.d/login:# and a static (admin-editable) part from /etc/motd.
#/etc/sudoers:# Members of the admin group may gain root privileges
#/etc/sudoers:%admin ALL=(ALL) ALL
#/etc/passwd:gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin




# =================================================================
# 示例：每行都会附上文件名，来阅读检查目录下所有文件的内容
# =================================================================
grep . *


# output:
#-------------------------------------------------------------------
#a.txt:aaa
#a.txt:bbbb
#a.txt:cccc
#a.txt:dddd
#b.txt:aaa
#b.txt:bbbb
#b.txt:cccc
#b.txt:dddd


# =================================================================
# 示例：在所有 dirlist*.txt 文件中 查询所有匹配包含 zip 的字符串的数据
# =================================================================
# 第一个元字符是圆点字符，其被用来匹配任意字符
grep -h '.zip' dirlist*.txt


# =================================================================
# 示例：锚点，在正则表达式中，插入符号和美元符号被看作是锚点。
# 这意味着正则表达式 只有在文本行的开头或末尾被找到时，才算发生一次匹配。
# =================================================================
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


# =================================================================
# 示例：中括号表达式和字符类
# =================================================================
# 匹配包含字符串“bzip”或者“gzip”的任意行
grep -h '[bg]zip' dirlist*.txt


# =================================================================
# 示例：否定，取反（排除）、不匹配指定字符
# =================================================================
# 匹配以任意字符串开头的zip的单词，但不匹配 zip
grep -h '[^bg]zip' dirlist*.txt


# =================================================================
# 示例：传统的字符区域
# =================================================================
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