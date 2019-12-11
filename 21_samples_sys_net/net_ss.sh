#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-17
# copyright by hoojo@2018
# @changelog Added sys net `ss` shell command example



# =================================================================
#		ss ———— 查看 tcp udp 端口监听
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
# 示例： 查看tcp端口监听情况
# =================================================================
ss -plat

# output:
#-------------------------------------------------------------------
#State       Recv-Q Send-Q                Local Address:Port           Peer Address:Port
#LISTEN      0      5                     127.0.1.1:domain             *:*
#LISTEN      0      128                   127.0.0.1:ipp                 *:*
#LISTEN      0      128                   ::1:ipp


# =================================================================
# 示例：查看tcp udp端口监听情况
# =================================================================
ss -platu

# output:
#-------------------------------------------------------------------
#







read exits