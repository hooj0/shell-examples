#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-31
# copyright by hoojo@2018



# =================================================================
#		mount —— 挂载和卸载存储设备
# =================================================================
#
# -----------------------------------------------------------------
# /etc/fstab 字段
# -----------------------------------------------------------------
# 字段 	内容 	    说明
# -----------------------------------------------------------------
# 1 	设备名 	    传统上，这个字段包含与物理设备相关联的设备文件的实际名字，
#                   比如说/dev/hda1（第一个 IDE 通道上第一个主设备分区）。
#                   然而今天的计算机，有很多热插拔设备（像 USB 驱动设备），
#                   许多 现代的 Linux 发行版用一个文本标签和设备相关联。当这个设备连接到系统中时，
#                   这个标签（当储存媒介格式化时，这个标签会被添加到存储媒介中）会被操作系统读取。
#                   那样的话，不管赋给实际物理设备哪个设备文件，这个设备仍然能被系统正确地识别。
# 2 	挂载点 	    设备所连接到的文件系统树的目录。
# 3 	文件系统类型 	Linux 允许挂载许多文件系统类型。大多数本地的 Linux 文件系统是 ext3，
#                   但是也支持很多其它的，比方说 FAT16 (msdos), FAT32 (vfat)，NTFS (ntfs)，CD-ROM (iso9660)，等等。
# 4 	选项 	    文件系统可以通过各种各样的选项来挂载。有可能，例如，挂载只读的文件系统，
#                   或者挂载阻止执行任何程序的文件系统（一个有用的安全特性，避免删除媒介。）
# 5 	频率 	    一位数字，指定是否和在什么时间用 dump 命令来备份一个文件系统。
# 6 	次序 	    一位数字，指定 fsck 命令按照什么次序来检查文件系统。
# -----------------------------------------------------------------




# =================================================================
#	 示例：查看 /etc/fstab 的文件可以列出系统启动时要挂载的设备
# =================================================================
cat /etc/fstab

# output:
#-------------------------------------------------------------------
# /dev/mapper/centos-root /                       xfs     defaults        0 0
# UUID=0074c428-9c37-4ab6-a5d1-cb7a2e1a5992 /boot                   xfs     defaults        0 0
# /dev/mapper/centos-swap swap                    swap    defaults        0 0
# /dev/sdb /ws                       		ext4	defaults        0 0
# /ws/docker/data/ /var/lib/docker		none    bind            0 0




# =================================================================
#	 示例：查看挂载的文件系统列表
# 列表的格式是：设备 on 挂载点， type 文件系统类型（选项）。
# =================================================================
mount

# output:
#-------------------------------------------------------------------
#sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime,seclabel)
#proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
#devtmpfs on /dev type devtmpfs (rw,nosuid,seclabel,size=924556k,nr_inodes=231139,mode=755)
#tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,seclabel)
#devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,seclabel,gid=5,mode=620,ptmxmode=000)
#tmpfs on /run type tmpfs (rw,nosuid,nodev,seclabel,mode=755)
#/dev/sdb on /var/lib/docker type ext4 (rw,relatime,seclabel,data=ordered)





# =================================================================
#	 示例：卸载挂载
# =================================================================
# 卸载 hdc 挂载目录
umount /dev/hdc

# output:
#-------------------------------------------------------------------
#





# =================================================================
#	 示例：挂载一个设备
# 一个挂载点就是文件系统树中的一个目录，它没有 什么特殊的。
# 它甚至不必是一个空目录，即使你把设备挂载到了一个非空目录上，
# 你也不能看到这个目录中原来的内容，直到你卸载这个设备。
# =================================================================
# 创建挂载目录
mkdir /mnt/cdrom

# 把这个 CD-ROW 挂载到一个新的挂载点上。这个-t 选项用来指定文件系统类型：
mount -t iso9660 /dev/hdc /mnt/cdrom

# 可以通过这个新挂载点来查看 CD-ROW 的内容：
ls -l /mnt/cdrom


# output:
#-------------------------------------------------------------------
#





read exits