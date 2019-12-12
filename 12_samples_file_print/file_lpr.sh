#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-11-02
# copyright by hoojo@2018
# @changelog Added file print `lpr` shell command example



# =================================================================
#		lpr——打印文件
# =================================================================
# pr 程序用来把文本分页。
# 当打印文本的时候，经常希望用几个空行在输出的页面的顶部或底部添加空白。
# 此外，这些空行能够用来插入到每个页面的页眉或页脚。
# -----------------------------------------------------------------
# 常用 pr 选项
# =================================================================
# 选项 	        描述
# -----------------------------------------------------------------
# +first[:last] 输出从 first 到 last（默认为最后）范围内的页面。
# -columns 	    根据 columns 指定的列数排版页面内容。
# -a 	        默认多列输出为垂直，用 -a (across)可使其水平输出。
# -d 	        双空格输出。
# -D format 	用 format 指定的格式修改页眉中显示的日期，日期命令中 format 字符串的描述详见参考手册。
# -f 	        改用换页替换默认的回车来分割页面。
# -h header 	在页眉中部用 header 参数替换打印文件的名字。
# -l length 	设置页长为 length，默认为66行（每英寸6行的美国信纸）。
# -n 	        输出行号。
# -o offset 	创建一个宽 offset 字符的左页边。
# -w width 	    设置页宽为 width，默认为72字符。
# -----------------------------------------------------------------
# 常用 lpr 选项
# =================================================================
# 选项 	        描述
# -----------------------------------------------------------------
# -# number 	设定打印份数为 number。
# -p 	        使每页页眉标题中带有日期、时间、工作名称和页码。这种所谓的“美化打印”选项可用于打印文本文件。
# -P printer 	指定输出打印机的名称。未指定则使用系统默认打印机。
# -r 	        打印后删除文件。对程序产生的临时打印文件较为有用。
# -----------------------------------------------------------------
# 常用 lp 选项
# =================================================================
# 选项 	        描述
# -----------------------------------------------------------------
# -d printer 	设定目标（打印机）为 printer。若d 选项未指定，则使用系统默认打印机。
# -n number 	设定的打印份数为 number。
# -o landscape 	设置输出为横向。
# -o fitplot 	缩放文件以适应页面。打印图像时较为有用，如 JPEG 文件。
# -o scaling=number 	缩放文件至 number。100表示填满页面，小于100表示缩小，大于100则会打印在多页上。
# -o cpi=number 	    设定输出为 number 字符每英寸。默认为10。
# -o lpi=number 	    设定输出为 number 行每英寸，默认为6。
# -o page-bottom=points
# -o page-left=points
# -o page-right=points
# -o page-top=points 	设置页边距，单位为点，一种印刷上的单位。一英寸 =72点。
# -P pages 	            指定打印的页面。pages 可以是逗号分隔的列表或范围——例如 1,3,5,7-10。
# -----------------------------------------------------------------
# 常用 lp 选项
# =================================================================
# 选项 	                描述
# -----------------------------------------------------------------
# -d printer 	        设定目标（打印机）为 printer。若d 选项未指定，则使用系统默认打印机。
# -n number 	        设定的打印份数为 number。
# -o landscape 	        设置输出为横向。
# -o fitplot 	        缩放文件以适应页面。打印图像时较为有用，如 JPEG 文件。
# -o scaling=number 	缩放文件至 number。100表示填满页面，小于100表示缩小，大于100则会打印在多页上。
# -o cpi=number 	    设定输出为 number 字符每英寸。默认为10。
# -o lpi=number 	    设定输出为 number 行每英寸，默认为6。
# -o page-bottom=points
# -o page-left=points
# -o page-right=points
# -o page-top=points 	设置页边距，单位为点，一种印刷上的单位。一英寸 =72点。
# -P pages 	            指定打印的页面。pages 可以是逗号分隔的列表或范围——例如 1,3,5,7-10。
# -----------------------------------------------------------------




# =================================================================
# 示例：打印显示分页：
#       pr 为 distros.txt 中的内容编订页码，用空行分开各页面，
#       生成了包含文件修改时间、文件名、页码的默认页眉。
# =================================================================
# -l 选项（页长）和 -w 选项（页宽）定义了宽65列，长15行的一个“页面”
pr -l 15 -w 65 distros.txt

# output:
#-------------------------------------------------------------------
# 


# =================================================================
# 示例：查看打印文件的实际效果
# =================================================================
# ^H（ctrl-H）字符是用于打印粗体效果的退格符
zcat /usr/share/man/man1/ls.1.gz | nroff -man | cat -A | head

# output:
#-------------------------------------------------------------------
#



# =================================================================
# 示例：通常用管道配合 pr 命令来做筛选
# =================================================================
# 列出目录 /usr/bin 并用 pr 将其格式化为3列输出的标题页
ls /usr/bin | pr -3 -w 65 | head



# =================================================================
# 示例：lpr 程序可以用来把文件传送给打印
# =================================================================
ls /usr/bin | pr -3 | lpr

# 要送到别的打印机，可以使用 -P 参数
ls /usr/bin | pr -3 | lpr -P printer_name



# =================================================================
# 示例：查看系统已知的打印机列表，显示打印系统状态
#-------------------------------------------------------------------
# 常用 lpstat 选项
#-------------------------------------------------------------------
# 选项 	            描述
#-------------------------------------------------------------------
# -a [printer...] 	显示 printer 打印机的队列。这里显示的状态是打印机队列承受任务的能力，而不是实体打印机的状态。若未指定打印机，则显示所有打印队列。
# -d 	            显示系统默认打印机的名称。
# -p [printer...] 	显示 printer 指定的打印机的状态。若未指定打印机，则显示所有打印机状态。
# -r 	            显示打印系统的状态。
# -s 	            显示汇总状态。
# -t 	            显示完整状态报告。
# =================================================================
lpstat -a


# =================================================================
# 示例：设置12 CPI、8 LPI 和一个半英寸的左边距
# =================================================================
# 用小于默认的格式产生了一个四列的列表。增加 CPI 可以让我们在页面上打印更多列
ls /usr/bin | pr -4 -w 90 -l 88 | lp -o page-left=36 -o cpi=12 -o lpi=8