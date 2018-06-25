#!/bin/sh

# =================================================================
#		find——在某个文件夹中用一定规则查找文件
# =================================================================
# find directory options pattern
# -----------------------------------------------------------------




# =================================================================
#	 示例1：
# =================================================================
find . -name README.md

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例2：引号必须要
# =================================================================
find /home/user1 -name '*.png'


# output:
#-------------------------------------------------------------------
#




# =================================================================
#	 示例：查看所有文件信息。
# 在文件树上查看大小/日期，这可能看起来像递归版的 ls -l 但比 ls -lR 更易于理解
# =================================================================
find . -type f -ls


# output:
#-------------------------------------------------------------------
#263082    4 -rw-rw-r--   1 jojo     jojo         3139  3月 18 10:20 ./sso/sso-client.log
#263083    0 -rw-rw-r--   1 jojo     jojo            0  3月 18 10:14 ./sso/sso-client-gui.log
#263158 4096 -rw-------   1 jojo     jojo      4194304  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_003_
#263156 4096 -rw-------   1 jojo     jojo      4194304  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_001_
#263154   12 -rw-------   1 jojo     jojo         8468  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_MAP_
#263157 4096 -rw-------   1 jojo     jojo      4194304  3月 18 14:04 ./mozilla/firefox/guymojpn.default/Cache/_CACHE_002_
#263162    4 -rw-rw-r--   1 jojo     jojo          232  3月 18 14:04 ./mozilla/firefox/guymojpn.default/safebrowsing/test-malware-simple.sbstore
#263173    4 -rw-rw-r--   1 jojo     jojo           44  3月 18 14:04 ./mozilla/firefox/guymojpn.default/safebrowsing/test-phish-simple.cache
#263147 1052 -rw-rw-r--   1 jojo     jojo      1075032  3月 18 14:04 ./mozilla/firefox/guymojpn.default/startupCache/startupCache.4.little
#263155    4 -rw-------   1 jojo     jojo            1  3月 18 14:04 ./mozilla/firefox/guymojpn.default/_CACHE_CLEAN_
#263005 1388 -rw-rw-r--   1 jojo     jojo      1419001  6月 24 13:31 ./wallpaper/0_5_1920_973_792beab7550410d531e55f95b449f135
#263231    4 -rw-r-----   1 jojo     jojo           86  6月 23 23:03 ./upstart/update-notifier-release.log.1.gz
#263011    4 -rw-r-----   1 jojo     jojo          434  6月 23 17:00 ./upstart/unity-settings-daemon.log.2.gz





read exits