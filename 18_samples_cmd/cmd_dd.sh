#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-08-09
# copyright by hoojo@2018




# =================================================================
#		dd —— 文件或设备间传输数据
# =================================================================
# 把数据块从一个地方复制到另一个地方
#
# 语法：
#   dd if=input_file of=output_file [bs=block_size [count=blocks]]
# -----------------------------------------------------------------




# =================================================================
#	 示例：将软盘 A 的文件移动到软盘 B
#
# 比方说我们有两个相同容量的 USB 闪存驱动器，并且要精确地把第一个驱动器（中的内容） 复制给第二个。
# 如果连接两个设备到计算机上，它们各自被分配到设备/dev/sdb 和 /dev/sdc 上，
# 这样我们就能通过下面的命令把第一个驱动器中的所有数据复制到第二个 驱动器中。
# =================================================================
dd if=/dev/sdb of=/dev/sdc


# output:
#-------------------------------------------------------------------
# 


# =================================================================
#     示例：移动设备数据到普通文件设备中
#
# 如果只有第一个驱动器被连接到计算机上，
# 可以把它的内容复制到一个普通文件中供以后恢复或复制数据
# =================================================================
dd if=/dev/sdb of=flash_drive.img


# output:
#-------------------------------------------------------------------
#




# =================================================================
#	 示例：创建一个 CD-ROM 的映像拷贝
# 使用 dd 命令来读取 CD-ROW 中的所有数据块， 并把它们复制到本地 iso 映像文件中
# =================================================================
# 插入 CD-ROW 之后，确定 它的设备名称（假定是/dev/cdrom）
dd if=/dev/cdrom of=ubuntu.iso


# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：从文件集合中创建一个映像，使用 genisoimage 程序
#
# 首先创建 一个目录，这个目录中包含了要包括到此映像中的所有文件，
# 然后执行这个 genisoimage 命令 来创建映像文件。
#
# “-R”选项添加元数据为 Rock Ridge 扩展，这允许使用长文件名和 POSIX 风格的文件权限。
# ”-J”选项使 Joliet 扩展生效，这样 Windows 中就支持长文件名
# =================================================================
# 例如，如果我们已经创建一个叫做~/cd-rom-files 的目录，
# 然后用文件 填充此目录，再通过下面的命令来创建一个叫做 cd-rom.iso 映像文件：
genisoimage -o cd-rom.iso -R -J ~/cd-rom-files


# output:
#-------------------------------------------------------------------
#




# =================================================================
#	 示例：直接挂载一个 ISO 镜像
# 添加 “-o loop” 选项来挂载（同时带有必需的 “-t iso9660” 文件系统类型），
# 挂载这个映像文件就好像它是一台设备，把它连接到文件系统树上
# =================================================================
mkdir /mnt/iso_image
# 创建一个挂载点/mnt/iso_image，然后把此映像文件 image.iso 挂载到挂载点上
mount -t iso9660 -o loop image.iso /mnt/iso_image

# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：清除一张可重写入的 CD-ROM
# 可重写入的 CD-RW 媒介在被重使用之前需要擦除或清空
# =================================================================
wodim dev=/dev/cdrw blank=fast

# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：写入镜像
# =================================================================
wodim dev=/dev/cdrw image.iso


# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例：验证下载的 iso 映像文件的完整性
# =================================================================
# 使用 md5sum 程序的时候， 它会产生一个独一无二的十六进制数字：
md5sum image.iso

# 检查 cd 的完整性
md5sum /dev/cdrom


# output:
#-------------------------------------------------------------------
# 34e354760f9bb7fbf85c96f6a3f94ece    image.iso




read exits