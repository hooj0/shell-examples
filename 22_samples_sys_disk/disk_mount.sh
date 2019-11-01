#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-31
# copyright by hoojo@2018
# @changelog Added sys disk `mount` shell command example




# ===================================================================================
#		mount —— 挂载和卸载存储设备
# ===================================================================================
#
# -----------------------------------------------------------------------------------
# /etc/fstab 字段
# -----------------------------------------------------------------------------------
# 字段 	内容 	    说明
# -----------------------------------------------------------------------------------
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
# -----------------------------------------------------------------------------------




# ===================================================================================
# 示例：查看 /etc/fstab 的文件可以列出系统启动时要挂载的设备
# ===================================================================================
cat /etc/fstab

# output:
#-------------------------------------------------------------------------------------
# /dev/mapper/centos-root /                       xfs     defaults        0 0
# UUID=0074c428-9c37-4ab6-a5d1-cb7a2e1a5992 /boot                   xfs     defaults        0 0
# /dev/mapper/centos-swap swap                    swap    defaults        0 0
# /dev/sdb /ws                       		ext4	defaults        0 0
# /ws/docker/data/ /var/lib/docker		none    bind            0 0




# ===================================================================================
# 示例：查看挂载的文件系统列表
#   列表的格式是：设备 on 挂载点， type 文件系统类型（选项）。
# ===================================================================================
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





# ===================================================================================
# 示例：卸载挂载
# ===================================================================================
# 卸载 hdc 挂载目录
umount /dev/hdc

# output:
#-------------------------------------------------------------------------------------
#





# ===================================================================================
# 示例：挂载一个设备
#   一个挂载点就是文件系统树中的一个目录，它没有 什么特殊的。
#   它甚至不必是一个空目录，即使你把设备挂载到了一个非空目录上，
#   你也不能看到这个目录中原来的内容，直到你卸载这个设备。
# ===================================================================================
# 创建挂载目录
mkdir /mnt/cdrom

# 把这个 CD-ROW 挂载到一个新的挂载点上。这个-t 选项用来指定文件系统类型：
mount -t iso9660 /dev/hdc /mnt/cdrom

# 可以通过这个新挂载点来查看 CD-ROW 的内容：
ls -l /mnt/cdrom


# output:
#-------------------------------------------------------------------------------------
#





# ===================================================================================
# 示例：查看设备名称，Linux 存储设备名称
#------------------------------------------------------------------------------------
# 模式 	        设备
#------------------------------------------------------------------------------------
#/dev/fd* 	软盘驱动器
#------------------------------------------------------------------------------------
#/dev/hd* 	老系统中的 IDE(PATA)磁盘。典型的主板包含两个 IDE 连接器或者是通道，
#           每个连接器 带有一根缆线，每根缆线上有两个硬盘驱动器连接点。
#           缆线上的第一个驱动器叫做主设备， 第二个叫做从设备。设备名称这样安排，/dev/hdb 是指第一通道上的主设备名；
#           /dev/hdb 是第一通道上的从设备名；/dev/hdc 是第二通道上的主设备名，等等。
#           末尾的数字表示 硬盘驱动器上的分区。
#           例如，/dev/hda1是指系统中第一硬盘驱动器上的第一个分区，而 /dev/hda 则是指整个硬盘驱动器。
#------------------------------------------------------------------------------------
#/dev/lp* 	打印机
#------------------------------------------------------------------------------------
#/dev/sd* 	SCSI 磁盘。在最近的 Linux 系统中，内核把所有类似于磁盘的设备
#           （包括 PATA/SATA 硬盘， 闪存，和 USB 存储设备，比如说可移动的音乐播放器和数码相机）看作 SCSI 磁盘。
#           剩下的命名系统类似于上述所描述的旧的/dev/hd*命名方案。
#------------------------------------------------------------------------------------
#/dev/sr* 	光盘（CD/DVD 读取器和烧写器）
# ===================================================================================
ls /dev

# 可以查看系统日志，监视设备加载的情况
tail -f /var/log/messages

# output:
#------------------------------------------------------------------------------------
#




# ===================================================================================
# 示例：挂载一个设备到指定硬盘分区
# ===================================================================================
sudo mkdir /mnt/flash
sudo mount /dev/sdb1 /mnt/flash

df

# output:
#------------------------------------------------------------------------------------
#Filesystem      1K-blocks   Used        Available   Use%    Mounted on
#/dev/sda2       15115452    5186944     9775164     35%     /
#/dev/sda5       59631908    31777376    24776480    57%     /home
#/dev/sda1       147764      17277       122858      13%     /boot
#tmpfs           776808      0           776808      0%      /dev/shm
#/dev/sdb1       15560       0           15560       0%      /mnt/flash







read exits