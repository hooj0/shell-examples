#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-08-15
# copyright by hoojo@2018
# @changelog Added sys net `netstat` shell command example



# =================================================================
#		netstat —— 程序被用来检查各种各样的网络设置和统计数据
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
#	 示例1：查看网络连接的细节
# =================================================================
netstat -lntp

# output:
#-------------------------------------------------------------------
#Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
#tcp        0      0 127.0.1.1:53            0.0.0.0:*               LISTEN      -
#tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      -
#tcp6       0      0 ::1:631                 :::*                    LISTEN      -


# =================================================================
#	 示例2：使用“-ie”选项，我们能够查看系统中的网络接口
# eth0，是 以太网接口，
# lo，是内部回环网络接口，它是一个虚拟接口，系统用它来 “自言自语”
# br 桥接接口
#
# 每个网络接口第四行开头出现的单词 “UP”，说明这个网络接口已经生效，
# inet addr 字段出现的有效 IP 地址。
# 对于使用 DHCP（动态主机配置协议）的系统，在 这个字段中的一个有效 IP 地址则证明了 DHCP 工作正常。
# =================================================================
netstat -ie

# output:
#-------------------------------------------------------------------
#Kernel Interface table
#eth0    Link encap:Ethernet HWaddr 00:1d:09:9b:99:67
#        inet addr:192.168.1.2 Bcast:192.168.1.255 Mask:255.255.255.0
#        inet6 addr: fe80::21d:9ff:fe9b:9967/64 Scope:Link
#        UP BROADCAST RUNNING MULTICAST MTU:1500 Metric:1
#        RX packets:238488 errors:0 dropped:0 overruns:0 frame:0
#        TX packets:403217 errors:0 dropped:0 overruns:0 carrier:0
#        collisions:0 txqueuelen:100 RX bytes:153098921 (146.0 MB) TX
#        bytes:261035246 (248.9 MB) Memory:fdfc0000-fdfe0000
#
#lo      Link encap:Local Loopback
#        inet addr:127.0.0.1 Mask:255.0.0.0



# =================================================================
#	 示例：使用这个“-r”选项会显示内核的网络路由表
# 第一行显示了目的地 192.168.1.0。IP 地址以零结尾是指网络，而不是独立主机，
# 所以这个目的地意味着局域网中的任何一台主机。下一个字段，Gateway，
# 是网关（路由器）的名字或 IP 地址，用它来连接当前的主机和目的地的网络。
# 若这个字段显示一个星号，则表明不需要网关。
#
# 目的地 default。指的是发往任何表上没有列出的目的地网络的流量。
# 在我们的实例中，我们看到网关被定义为地址 192.168.1.1 的路由器，
# 它应该能 知道怎样来处理目的地流量。
# =================================================================
netstat -r

# output:
#-------------------------------------------------------------------
#Kernel IP routing table
#Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
#default         192.168.33.1    0.0.0.0         UG        0 0          0 eno16780032
#172.17.0.0      0.0.0.0         255.255.0.0     U         0 0          0 docker0
#172.20.0.0      0.0.0.0         255.255.0.0     U         0 0          0 docker_gwbridge
#192.168.0.0     0.0.0.0         255.255.240.0   U         0 0          0 br-19c1bc488a3d
#192.168.33.0    0.0.0.0         255.255.255.0   U         0 0          0 eno16780032
#192.168.96.0    0.0.0.0         255.255.240.0   U         0 0          0 br-16707aba1e0e
#192.168.122.0   0.0.0.0         255.255.255.0   U         0 0          0 virbr0




read exits