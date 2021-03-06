#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-06-28
# copyright by hoojo @ 2018
# @changelog Added shell started `hot key` example




# =============================================================================
#   快捷键         描述
# -----------------------------------------------------------------------------
#   Tab         键实现自动补全
#   ctrl-r      搜索命令行历史记录
#   ctrl-w      删除你键入的最后一个单词
#   ctrl-u      删除行内光标所在位置之前的内容
#   alt-f       以单词为单位向后移动光标
#   alt-b       以单词为单位向前移动光标
#   ctrl-a      将光标移至行首
#   ctrl-e      将光标移至行尾
#   ctrl-k      删除光标至行尾的所有内容
#   ctrl-l      清屏
# -----------------------------------------------------------------------------



# =============================================================================
#   移动光标
# =============================================================================
#    按键 	        描述
# -----------------------------------------------------------------------------
#   Ctrl-a 	    移动光标到行首
#   Ctrl-e 	    移动光标到行尾
#   Ctrl-f 	    光标前移一个字符；和右箭头作用一样
#   Ctrl-b 	    光标后移一个字符；和左箭头作用一样
#   Alt-f 	    光标前移一个字
#   Alt-b 	    光标后移一个字
#   Ctrl-l 	    清空屏幕，移动光标到左上角。clear 命令完成同样的工作
# -----------------------------------------------------------------------------



# =============================================================================
#   修改文本
# =============================================================================
#    按键 	        描述
# -----------------------------------------------------------------------------
#   Ctrl-d 	    删除光标位置的字符
#   Ctrl-t 	    光标位置的字符和光标前面的字符互换位置
#   Alt-t 	    光标位置的字和其前面的字互换位置
#   Alt-l 	    把从光标位置到字尾的字符转换成小写字母
#   Alt-u 	    把从光标位置到字尾的字符转换成大写字母
# -----------------------------------------------------------------------------



# =============================================================================
#   剪切和粘贴文本
# =============================================================================
#   按键 	            描述
# -----------------------------------------------------------------------------
#   Ctrl-k 	        剪切从光标位置到行尾的文本
#   Ctrl-u 	        剪切从光标位置到行首的文本
#   Alt-d 	        剪切从光标位置到词尾的文本
#   Alt-Backspace 	剪切从光标位置到词头的文本。如果光标在一个单词的开头，剪切前一个单词
#   Ctrl-y 	        把剪切环中的文本粘贴到光标位置
# -----------------------------------------------------------------------------



# =============================================================================
#   历史命令快捷键
# =============================================================================
#   按键 	            行为
# -----------------------------------------------------------------------------
#   Ctrl-p 	    移动到上一个历史条目。类似于上箭头按键
#   Ctrl-n 	    移动到下一个历史条目。类似于下箭头按键
#   Alt-< 	    移动到历史列表开头
#   Alt-> 	    移动到历史列表结尾，即当前命令行
#   Ctrl-r  	反向递增搜索。从当前命令行开始，向上递增搜索
#   Alt-p 	    反向搜索，不是递增顺序。输入要查找的字符串，然后按下 Enter，执行搜索
#   Alt-n 	    向前搜索，非递增顺序
#   Ctrl-o 	    执行历史列表中的当前项，并移到下一个。如果你想要执行历史列表中一系列的命令，这很方便
# -----------------------------------------------------------------------------



# =============================================================================
#   其他快捷键
# =============================================================================
#    按键 	 描述
# -----------------------------------------------------------------------------
#   Tab     自动补全
#   Alt-? 	显示可能的自动补全列表。在大多数系统中，你也可以完成这个通过按 两次 tab 键，这会更容易些
#   Alt-* 	插入所有可能的自动补全。当你想要使用多个可能的匹配项时，这个很有帮助
# -----------------------------------------------------------------------------



# -----------------------------------------------------------------------------
# 可以执行 set -o vi 来使用 vi 风格的快捷键，而执行 set -o emacs 可以把它改回来

# 可编程自动补全
# 可编程自动补全允许你来加入额外的自动补全规则。
# 可编程自动补全是由 shell 函数实现的，shell 函数是一种小巧的 shell 脚本
# 查看自动补全 set | less
# -----------------------------------------------------------------------------






