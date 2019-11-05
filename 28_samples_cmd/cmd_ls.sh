#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   ${DATE}
# copyright by hoojo@2020
# @changelog Added cmd `lsxxx` shell command example




# =================================================================
#		
# =================================================================
#   lsblk：列出块设备信息：以树形展示你的磁盘以及磁盘分区信息
#   lshw，lscpu，lspci，lsusb 和 dmidecode：查看硬件信息，包括 CPU、BIOS、RAID、显卡、USB设备等
#   lsmod 和 modinfo：列出内核模块，并显示其细节
# -----------------------------------------------------------------




# =================================================================
#	 示例：列出块设备信息：以树形展示你的磁盘以及磁盘分区信息
# =================================================================
lsblk

# output:
#-------------------------------------------------------------------
#NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
#sda      8:0    0    10G  0 disk
#├─sda1   8:1    0   6.6G  0 part /
#├─sda2   8:2    0     1K  0 part
#└─sda5   8:5    0   3.4G  0 part [SWAP]
#sr0     11:0    1  56.8M  0 rom  /media/jojo/VBOXADDITIONS_5.1.26_117224


# =================================================================
#	 示例：查看硬件信息
# =================================================================
lshw

# output:
#-------------------------------------------------------------------
#jojo-virtualbox
#    description: Computer
#    width: 32 bits
#  *-core
#       description: Motherboard
#       physical id: 0
#     *-memory
#          description: System memory
#          physical id: 0
#          size: 3446MiB
#     *-cpu
#          product: Intel(R) Core(TM) i3 CPU       M 350  @ 2.27GHz
#          vendor: Intel Corp.
#          physical id: 1
#          bus info: cpu@0
#          version: 6.5.2
#          serial: 0002-0652-0000-0000-0000-0000
#          size: 2250MHz
#          width: 64 bits



# =================================================================
#	 示例：查看硬件cpu信息
# =================================================================
lscpu

# output:
#-------------------------------------------------------------------
#Architecture:          i686
#CPU 运行模式：    32-bit, 64-bit
#Byte Order:            Little Endian
#CPU(s):                2
#On-line CPU(s) list:   0,1
#每个核的线程数：1
#每个座的核数：  2
#Socket(s):             1
#厂商 ID：           GenuineIntel
#CPU 系列：          6
#型号：              37
#步进：              2
#CPU MHz：             2260.990
#BogoMIPS:              4521.98
#超管理器厂商：  KVM
#虚拟化类型：     full
#L1d 缓存：          32K
#L1i 缓存：          32K
#L2 缓存：           256K
#L3 缓存：           3072K




# =================================================================
#	 示例：查看硬件pci信息
# =================================================================
lspci

# output:
#-------------------------------------------------------------------
#00:00.0 Host bridge: Intel Corporation 440FX - 82441FX PMC [Natoma] (rev 02)
#00:01.0 ISA bridge: Intel Corporation 82371SB PIIX3 ISA [Natoma/Triton II]
#00:01.1 IDE interface: Intel Corporation 82371AB/EB/MB PIIX4 IDE (rev 01)
#00:02.0 VGA compatible controller: InnoTek Systemberatung GmbH VirtualBox Graphics Adapter
#00:03.0 Ethernet controller: Intel Corporation 82540EM Gigabit Ethernet Controller (rev 02)



lsusb

#Bus 001 Device 002: ID 80ee:0021 VirtualBox USB Tablet
#Bus 001 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub

dmidecode


lsmod

#Module                  Size  Used by
#nls_utf8               12493  1
#isofs                  39203  1
#vboxsf                 38507  1
#bnep                   18895  2
#rfcomm                 53664  0
#bluetooth             342206  10 bnep,rfcomm


modinfo vboxsf


read exits