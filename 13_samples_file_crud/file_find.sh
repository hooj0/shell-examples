#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-09-12
# copyright by hoojo@2018
# @changelog Added file curd `find` shell command example


# =================================================================
#		find —— 在某个文件夹中用一定规则查找文件
# =================================================================
# find 文件类型
# ---------------------------------------------------------------------------------------------
# 文件类型 	描述
# ---------------------------------------------------------------------------------------------
# b 	    块特殊设备文件
# c 	    字符特殊设备文件
# d 	    目录
# f 	    普通文件
# l 	    符号链接
# =============================================================================================
# find 大小
# ---------------------------------------------------------------------------------------------
# 单位字符 	单位
# ---------------------------------------------------------------------------------------------
# b 	512 个字节块。如果没有指定单位，则这是默认值。
# c 	字节
# w 	两个字节的字
# k 	千字节(1024个字节单位)
# M 	兆字节(1048576个字节单位)
# G 	千兆字节(1073741824个字节单位)
# =============================================================================================
# find 测试条件
# ---------------------------------------------------------------------------------------------
# 测试条件 	    描述
# ---------------------------------------------------------------------------------------------
# -cmin n 	    匹配内容或属性最后修改时间正好在 n 分钟之前的文件或目录。 指定少于 n 分钟之前，使用 -n，指定多于 n 分钟之前，使用 +n。
# -cnewer file 	匹配内容或属性最后修改时间晚于 file 的文件或目录。
# -ctime n 	    匹配内容和属性最后修改时间在 n*24小时之前的文件和目录。
# -empty 	    匹配空文件和目录。
# -group name 	匹配属于一个组的文件或目录。组可以用组名或组 ID 来表示。
# -iname pattern 	就像-name 测试条件，但是不区分大小写。
# -inum n 	    匹配 inode 号是 n的文件。这对于找到某个特殊 inode 的所有硬链接很有帮助。
# -mmin n 	    匹配内容被修改于 n 分钟之前的文件或目录。
# -mtime n 	    匹配的文件或目录的内容被修改于 n*24小时之前。
# -name pattern 	用指定的通配符模式匹配的文件和目录。
# -newer file 	匹配内容晚于指定的文件的文件和目录。这在编写执行备份的 shell 脚本的时候很有帮。
#               每次你制作一个备份，更新文件（比如说日志），然后使用 find 命令来判断哪些文件自从上一次更新之后被更改了。
# -nouser 	    匹配不属于一个有效用户的文件和目录。这可以用来查找 属于被删除的帐户的文件或监测攻击行为。
# -nogroup 	    匹配不属于一个有效的组的文件和目录。
# -perm mode 	匹配权限已经设置为指定的 mode的文件或目录。mode 可以用 八进制或符号表示法。
# -samefile name 	类似于-inum 测试条件。匹配和文件 name 享有同样 inode 号的文件。
# -size n 	    匹配大小为 n 的文件
# -type c 	    匹配文件类型是 c 的文件。
# -user name 	匹配属于某个用户的文件或目录。这个用户可以通过用户名或用户 ID 来表示。
# =============================================================================================
# find 命令的逻辑操作符
# ---------------------------------------------------------------------------------------------
# 操作符 	描述
# ---------------------------------------------------------------------------------------------
# -and 	如果操作符两边的测试条件都是真，则匹配。可以简写为 -a。 注意若没有使用操作符，则默认使用 -and。
# -or 	若操作符两边的任一个测试条件为真，则匹配。可以简写为 -o。
# -not 	若操作符后面的测试条件是真，则匹配。可以简写为一个感叹号（!）。
# () 	把测试条件和操作符组合起来形成更大的表达式。这用来控制逻辑计算的优先级。
#       默认情况下，find 命令按照从左到右的顺序计算。经常有必要重写默认的求值顺序，以得到期望的结果。
#       即使没有必要，有时候包括组合起来的字符，对提高命令的可读性是很有帮助的。
#       注意 因为圆括号字符对于 shell 来说有特殊含义，所以在命令行中使用它们的时候，
#       它们必须 用引号引起来，才能作为实参传递给 find 命令。通常反斜杠字符被用来转义圆括号字符。
# =============================================================================================
# 几个预定义的 find 命令操作
# ---------------------------------------------------------------------------------------------
# 操作 	    描述
# ---------------------------------------------------------------------------------------------
# -delete 	删除当前匹配的文件。
# -ls 	    对匹配的文件执行等同的 ls -dils 命令。并将结果发送到标准输出。
# -print 	把匹配文件的全路径名输送到标准输出。如果没有指定其它操作，这是 默认操作。
# -quit 	一旦找到一个匹配，退出。
# =============================================================================================
# find 命令选项
# ---------------------------------------------------------------------------------------------
# 选项 	    描述
# ---------------------------------------------------------------------------------------------
# -depth 	指示 find 程序先处理目录中的文件，再处理目录自身。当指定-delete 行为时，会自动 应用这个选项。
# -maxdepth levels 	当执行测试条件和行为的时候，设置 find 程序陷入目录树的最大级别数
# -mindepth levels 	在应用测试条件和行为之前，设置 find 程序陷入目录数的最小级别数。
# -mount 	指示 find 程序不要搜索挂载到其它文件系统上的目录。
# -noleaf 	指示 find 程序不要基于自己在搜索 Unix 的文件系统的假设，来优化它的搜索。
#           在搜索DOS/Windows 文件系统和CD/ROMS的时候，我们需要这个选项
# ---------------------------------------------------------------------------------------------




# =============================================================================================
# 示例：在当前目录下查找文件名 readMe 的文件
# =============================================================================================
find . -name README.md

# output:
#----------------------------------------------------------------------------------------------
# 


# =============================================================================================
# 示例：引号必须要，在指定目录下查找特定后缀文件
# =============================================================================================
find /home/user1 -name '*.png'


# output:
#----------------------------------------------------------------------------------------------
#


# =============================================================================================
# 示例：查看所有文件信息。
# 在文件树上查看大小/日期，这可能看起来像递归版的 ls -l 但比 ls -lR 更易于理解
# =============================================================================================
find . -type f -ls


# output:
#----------------------------------------------------------------------------------------------
#263082    4 -rw-rw-r--   1 jojo     jojo         3139  3月 18 10:20 ./sso/sso-client.log
#263083    0 -rw-rw-r--   1 jojo     jojo            0  3月 18 10:14 ./sso/sso-client-gui.log
#263158 4096 -rw-------   1 jojo     jojo      4194304  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_003_
#263156 4096 -rw-------   1 jojo     jojo      4194304  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_001_
#263154   12 -rw-------   1 jojo     jojo         8468  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_MAP_
#263157 4096 -rw-------   1 jojo     jojo      4194304  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_002_
#263162    4 -rw-rw-r--   1 jojo     jojo          232  3月 18 14:04 ./mozilla/firefox/guymojpn.default/safebrowsing/test-malware-simple.sbstore
#263173    4 -rw-rw-r--   1 jojo     jojo           44  3月 18 14:04 ./mozilla/firefox/guymojpn.default/safebrowsing/test-phish-simple.cache
#263147 1052 -rw-rw-r--   1 jojo     jojo      1075032  3月 18 14:04 ./mozilla/firefox/guymojpn.default/startupCache/startupCache.4.little
#263155    4 -rw-------   1 jojo     jojo            1  3月 18 14:04 ./mozilla/firefox/guymojpn.default/_CACHE_CLEAN_
#263005 1388 -rw-rw-r--   1 jojo     jojo      1419001  6月 24 13:31 ./wallpaper/0_5_1920_973_792beab7550410d531e55f95b449f135
#263231    4 -rw-r-----   1 jojo     jojo           86  6月 23 23:03 ./upstart/update-notifier-release.log.1.gz
#263011    4 -rw-r-----   1 jojo     jojo          434  6月 23 17:00 ./upstart/unity-settings-daemon.log.2.gz



# =============================================================================================
# 示例：查找当前用户目录下的文件或文件夹，统计文件数量
# =============================================================================================
find ~ | wc -l

# 只查找文件夹的数量
find ~ -type d | wc -l
# 只查找文件的数量
find ~ -type f | wc -l


# =============================================================================================
# 示例：根据文件大小和文件名来搜索
#   让我们查找所有文件名匹配 通配符模式“*.JPG”和文件大小大于1M 的普通文件
# =============================================================================================
find ~ -type f -name "*.JPG" -size +1M | wc -l


# =============================================================================================
# 示例：确定是否一个目录中的所有的文件和子目录拥有安全权限
# =============================================================================================
find ~ \( -type f -not -perm 0600 \) -or \( -type d -not -perm 0700 \)


# =============================================================================================
# 示例：查找 home 目录下的文件，它会输出一个列表，因为会默认使用-print 操作
# =============================================================================================
find ~ -print


# =============================================================================================
# 示例：使用 find 命令来删除符合一定条件的文件
# =============================================================================================
# 删除扩展名为“.BAK”，建议先输出确认后再删除
find ~ -type f -name '*.BAK' -print
# 删除
find ~ -type f -name '*.BAK' -delete

# 更加严谨的格式，仅仅查找文件
find ~ -type f -and -name '*.BAK' -and -print



# =============================================================================================
# 示例：在使用 find 命令时，自定义执行动作/命令
# =============================================================================================
#-exec rm '{}' ';' {} 代表当前文件的路径
# 匹配到文件后，执行 ls -l path
find ~ -type f -name 'foo*' -exec ls -l '{}' ';'
# -ok 提示确认执行 ls 命令
find ~ -type f -name 'foo*' -ok ls -l '{}' ';'
find ~ -type f -name 'foo*' -ok echo '{}' ';'


# =============================================================================================
# 示例：在使用 find 命令时，自定义执行动作/命令
# 为提供效率，在匹配到文件后将命令合并为一个动作执行，而不每个文件执行一次
# =============================================================================================
# 不使用 ； 结束，改用 + 拼接下一个匹配到的文件
find ~ -type f -name 'foo*' -exec ls -l '{}' +


# =============================================================================================
# 示例：find 结合正则查找文件
# =============================================================================================
find . -regex '.*[^-\_./0-9a-zA-Z].*'