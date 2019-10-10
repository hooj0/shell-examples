#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2018-07-17
# copyright by hoojo@2018
# @changelog Added sys net `dig` shell command example



# =================================================================
#		dig —— 输出某个域名的 DNS 信息
# =================================================================
# 
# -----------------------------------------------------------------




# =================================================================
# 示例：输出域名的 DNS 信息
# =================================================================
dig domain

# output:
#-------------------------------------------------------------------
#; <<>> DiG 9.9.5-3-Ubuntu <<>> domain
#;; global options: +cmd
#;; Got answer:
#;; ->>HEADER<<- opcode: QUERY, status: NXDOMAIN, id: 54183
#;; flags: qr rd ra; QUERY: 1, ANSWER: 0, AUTHORITY: 1, ADDITIONAL: 1
#
#;; OPT PSEUDOSECTION:
#; EDNS: version: 0, flags:; udp: 4000
#;; QUESTION SECTION:
#;domain.				IN	A
#
#;; AUTHORITY SECTION:
#.			10800	IN	SOA	a.root-servers.net. nstld.verisign-grs.com. 2018061800 1800 900 604800 86400
#
#;; Query time: 200 msec
#;; SERVER: 127.0.1.1#53(127.0.1.1)
#;; WHEN: Mon Jun 18 21:10:44 CST 2018
#;; MSG SIZE  rcvd: 110


# =================================================================
# 示例：
# =================================================================


# output:
#-------------------------------------------------------------------
#







read exits