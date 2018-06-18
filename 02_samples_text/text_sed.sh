#!/bin/sh

# =================================================================
#		sed —— 过滤和替换文本
# =================================================================
# 用于过滤和替换文本的流式编辑命令
# -----------------------------------------------------------------




# =================================================================
#	 示例1：把 example.txt 所有空格替换为连字符并输出
# =================================================================
sed 's/ /-/g' example.txt

# output:
#-------------------------------------------------------------------
#Lorem-ipsum
#dolor-sit-amet,
#consetetur
#sadipscing-elitr,
#sed-diam-nonumy
#eirmod-tempor
#invidunt-ut-labore
#et-dolore-magna
#aliquyam-erat,-sed
#diam-voluptua.-At
#vero-eos-et
#accusam-et-justo
#duo-dolores-et-ea
#rebum.-Stet-clita
#kasd-gubergren,
#no-sea-takimata
#sanctus-est-Lorem
#ipsum-dolor-sit
#amet.



# =================================================================
#	 示例2：把所有a、b、c替换为 "_"
# =================================================================
sed 's/[a-c]/_/g' example.txt



# output:
#-------------------------------------------------------------------
#Lorem ipsum
#dolor sit _met,
#_onsetetur
#s_dips_ing elitr,
#sed di_m nonumy
#eirmod tempor
#invidunt ut l__ore
#et dolore m_gn_
#_liquy_m er_t, sed
#di_m voluptu_. At
#vero eos et
#___us_m et justo
#duo dolores et e_
#re_um. Stet _lit_
#k_sd gu_ergren,
#no se_ t_kim_t_
#s_n_tus est Lorem
#ipsum dolor sit
#_met.







read exits