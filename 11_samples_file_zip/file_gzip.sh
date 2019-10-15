#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-09-21
# copyright by hoojo@2018
# @changelog Added file `gzip` shell command example



# ===================================================================================
#		gzip——压缩文件
# ===================================================================================
# gzip 选项
# ----------------------------------------------------------------------------------
# 选项 	说明
# ----------------------------------------------------------------------------------
# -c 	把输出写入到标准输出，并且保留原始文件。也有可能用--stdout 和--to-stdout 选项来指定。
# -d 	解压缩。正如 gunzip 命令一样。也可以用--decompress 或者--uncompress 选项来指定.
# -f 	强制压缩，即使原始文件的压缩文件已经存在了，也要执行。也可以用--force 选项来指定。
# -h 	显示用法信息。也可用--help 选项来指定。
# -l 	列出每个被压缩文件的压缩数据。也可用--list 选项。
# -r 	若命令的一个或多个参数是目录，则递归地压缩目录中的文件。也可用--recursive 选项来指定。
# -t 	测试压缩文件的完整性。也可用--test 选项来指定。
# -v 	显示压缩过程中的信息。也可用--verbose 选项来指定。
# -number 	设置压缩指数。number 是一个在1（最快，最小压缩）到9（最慢，最大压缩）之间的整数。
#           数值1和9也可以各自用--fast 和--best 选项来表示。默认值是整数6。
# ----------------------------------------------------------------------------------




# ===================================================================================
# 示例：压缩文件
# ===================================================================================
gzip foo.txt

# 测试压缩文件完整性，并且查看压缩过程
gzip -tv foo.txt.gz



# ===================================================================================
# 示例：解压缩文件
# ===================================================================================
gunzip foo.txt.gz

# 解压缩文件
gzip -d foo.txt.gz



# ===================================================================================
# 示例：查看压缩文件文本
# ===================================================================================
# -c 输出写入到标准输出
gunzip -c foo.txt | less

# 也可以查看压缩文件中的内容
zcat foo.txt.gz | less


read exits