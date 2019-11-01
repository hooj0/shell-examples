#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-25
# copyright by hoojo@2018
# @changelog Added sys `ps1` shell command example



# =================================================================
#       自定制 shell 提示符
# =================================================================
# Shell 提示符中用到的转义字符
# -----------------------------------------------------------------
# 序列 	显示值
# -----------------------------------------------------------------
# \a 	以 ASCII 格式编码的铃声 . 当遇到这个转义序列时，计算机会发出嗡嗡的响声。
# \d 	以日，月，天格式来表示当前日期。例如，“Mon May 26.”
# \h 	本地机的主机名，但不带末尾的域名。
# \H 	完整的主机名。
# \j 	运行在当前 shell 会话中的工作数。
# \l 	当前终端设备名。
# \n 	一个换行符。
# \r 	一个回车符。
# \s 	shell 程序名。
# \t 	以24小时制，hours:minutes:seconds 的格式表示当前时间.
# \T 	以12小时制表示当前时间。
# \@ 	以12小时制，AM/PM 格式来表示当前时间。
# \A 	以24小时制，hours:minutes 格式表示当前时间。
# \u 	当前用户名。
# \v 	shell 程序的版本号。
# \V 	Version and release numbers of the shell.
# \w 	当前工作目录名。
# \W 	当前工作目录名的最后部分。
# \! 	当前命令的历史号。
# \# 	当前 shell 会话中的命令数。
# \$ 	这会显示一个"$"字符，除非你拥有超级用户权限。在那种情况下， 它会显示一个"#"字符。
# \[ 	标志着一系列一个或多个非打印字符的开始。这被用来嵌入非打印 的控制字符，
#       这些字符以某种方式来操作终端仿真器，比方说移动光标或者是更改文本颜色。
# \] 	标志着非打印字符序列结束。
# -----------------------------------------------------------------




# =================================================================
# 示例：shell 命令中的提示符
# =================================================================
echo $PS1

# output:
#-------------------------------------------------------------------
# [\u@\h \W]\$


# =================================================================
# 示例：自定义颜色输出
#------------------------------------------------------------------
# 字符颜色是由发送到终端仿真器的一个嵌入到了要显示的字符流中的 ANSI 转义编码来控制的。
# 这个控制编码不会“打印”到屏幕上，而是被终端解释为一个指令。
# 正如我们在上表看到的字符序列， 这个 [ 和 ] 序列被用来封装这些非打印字符。
# 一个 ANSI 转义编码以一个八进制033（这个编码是由 退出按键产生的）开头，
# 其后跟着一个可选的字符属性，在之后是一个指令。
# =================================================================
# 用转义序列来设置文本颜色
#------------------------------------------------------------------
#   序列 	    文本颜色 	   序列 	    文本颜色
#------------------------------------------------------------------
# \033[0;30m 	黑色 	\033[1;30m 	深灰色
# \033[0;31m 	红色 	\033[1;31m 	浅红色
# \033[0;32m 	绿色 	\033[1;32m 	浅绿色
# \033[0;33m 	棕色 	\033[1;33m 	黄色
# \033[0;34m 	蓝色 	\033[1;34m 	浅蓝色
# \033[0;35m 	粉红 	\033[1;35m 	浅粉色
# \033[0;36m 	青色 	\033[1;36m 	浅青色
# \033[0;37m 	浅灰色 	\033[1;37m 	白色
#-------------------------------------------------------------------
# 用转义序列来设置背景颜色
#-------------------------------------------------------------------
# \033[0;40m 	蓝色 	\033[1;44m 	黑色
# \033[0;41m 	红色 	\033[1;45m 	紫色
# \033[0;42m 	绿色 	\033[1;46m 	青色
# \033[0;43m 	棕色 	\033[1;47m 	浅灰色
#-------------------------------------------------------------------
# 用转义序列来设置文本颜色
PS1='\[\033[0;31m\]<\u@\h \W>\$\[\033[0m\]'
printf "\033[1;35m"

# 用转义序列来设置背景颜色
PS1='\[\033[0;41m\]<\u@\h \W>\$\[\033[0m\] '
printf "\033[0;41m"

# output:
#-------------------------------------------------------------------
#



# =================================================================
# 示例：光标移动转义序列
#-------------------------------------------------------------------
# 转义编码 	行动
#-------------------------------------------------------------------
#\033[l;cH 	把光标移到第 l 行，第 c 列。
#\033[nA 	把光标向上移动 n 行。
#\033[nB 	把光标向下移动 n 行。
#\033[nC 	把光标向前移动 n 个字符。
#\033[nD 	把光标向后移动 n 个字符。
#\033[2J 	清空屏幕，把光标移到左上角（第零行，第零列）。
#\033[K 	清空从光标位置到当前行末的内容。
#\033[s 	存储当前光标位置。
#\033[u 	唤醒之前存储的光标位置。
# =================================================================

#-------------------------------------------------------------------
# 序列 	        行动
#-------------------------------------------------------------------
#\[ 	        开始一个非打印字符序列。其真正的目的是为了让 bash 能够正确地计算提示符的大小。
#               如果没有这个转义字符的话，命令行编辑 功能会弄错光标的位置。
#\033[s 	    存储光标位置。这个用来使光标能回到原来提示符的位置， 当长条和时钟显示到屏幕上方之后。
#               当心一些 终端仿真器不推崇这个编码。
#\033[0;0H 	    把光标移到屏幕左上角，也就是第零行，第零列的位置。
#\033[0;41m 	把背景设置为红色。
#\033[K 	    清空从当前光标位置到行末的内容。因为现在 背景颜色是红色，则被清空行背景成为红色，以此来创建长条。
#               注意虽然一直清空到行末， 但是不改变光标位置，它仍然在屏幕左上角。
#\033[1;33m 	把文本颜色设为黄色。
#\t 	        显示当前时间。虽然这是一个可“打印”的元素，但我们仍把它包含在提示符的非打印部分，
#               因为我们不想 bash 在计算可见提示符的真正大小时包括这个时钟在内。
#\033[0m 	    关闭颜色设置。这对文本和背景都起作用。
#\033[u 	    恢复到之前保存过的光标位置处。
#\] 	        结束非打印字符序列。
#<\u@\h \W>\$ 	提示符字符串。
#-------------------------------------------------------------------
printf "\033[1;33m "



# =================================================================
# 示例：bash/sh 命令设置提示符
# =================================================================
# \[\e]0;\u:\w\a\]\n    设置窗口标题 root:/home
# \[\e[32m\]\u@\h       设置 用户和主机信息 root@ubuntu-trusty-64
# \[\e[35m\]\s\[\e[0m\] 设置 当前使用的shell程序
# \[\e[33m\]\w\[\e[0m\] 设置 当前所在目录
# \n$                   设置起始符
PS1='\[\e]0;\u:\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]\s\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n$ '
# 不设置 shell 程序
export PS1='\[\e]0;\u:\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ '
# 不设置 窗口标题
export PS1='\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ '
# 转义后的颜色设置
export PS1='[\[\033[0;32m\]\H@\u\[\033[0m\] \[\033[0;33m\]\w\[\033[0m\]]\r\n\$ '
# 用户 主机 当前目录 颜色不同
export PS1="\[\e[32m\][\[\e[35m\]\u\[\e[m\]@\[\e[36m\]\h \[\e[31m\]\w\[\e[32m\]]\[\e[36m\]$\[\e[m\] "



# =================================================================
# 示例：zsh 命令设置提示符
# -----------------------------------------------------------------
# 转义变量	    描述
# -----------------------------------------------------------------
# %T	    系统时间（时：分）
# %*	    系统时间（时：分：秒）
# %D	    系统日期（年-月-日）
# %n	    你的用户名
# %B - %b	开始到结束使用粗体打印
# %U - %u	开始到结束使用下划线打印
# %d	    你目前的工作目录
# %~	    你目前的工作目录相对于～的相对路径（可能在某些zsh版本可能造成乱码）
# %M	    计算机的主机名
# %m	    计算机的主机名（在第一个句号之前截断）
# %l	    你当前的tty
# =================================================================
autoload -U colors && colors
export PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~%{$reset_color%}%% "
export PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}% $ "


read exits