#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2020-11-05
# copyright by hoojo@2020
# @changelog Added package `pip` shell command example




# ==========================================================================
#       pip ——— python 软件包管理
# ==========================================================================
# 搜索软件包：https://pypi.org/
# --------------------------------------------------------------------------
# $ sudo pip --help
# Usage:
#  pip <command> [options]
#
# Commands:
#  install                     安装包
#  download                    下载包
#  uninstall                   卸载删除包
#  freeze                      输出安装版本格式软件包
#  list                        已安装软件包列表
#  show                        显示有关已安装软件包的信息
#  check                       验证安装的软件包和依赖软件包是否兼容
#  config                      管理本地和全局配置
#  search                      在PyPI中搜索软件包
#  cache                       检查并管理pip的缓存
#  wheel                       根据依赖进行构建
#  hash                        软件包文件的哈希值
#  completion                  用于命令的帮助程序命令
#  debug                       显示对调试有用的信息
#  help                        Show help for commands.
# --------------------------------------------------------------------------
# pip 源
#   sudo pip install sip -i http://pypi.douban.com/simple
#   sudo pip install sip -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
# --------------------------------------------------------------------------
#   阿里云 http://mirrors.aliyun.com/pypi/simple/
#   中国科技大学 https://pypi.mirrors.ustc.edu.cn/simple/
#   豆瓣(douban) http://pypi.douban.com/simple/
#   清华大学 https://pypi.tuna.tsinghua.edu.cn/simple/
#   中国科学技术大学 http://pypi.mirrors.ustc.edu.cn/simple/
# --------------------------------------------------------------------------
# vim ~/.pip/pip.conf
#
# [global]
# index-url = http://mirrors.aliyun.com/pypi/simple/
# [install]
# trusted-host = mirrors.aliyun.com
# --------------------------------------------------------------------------
# 查看 pip 安装包位置
#   python -m site
# 多个版本pip和python 可以利用python固定版本
#   python -m pip install package
# --------------------------------------------------------------------------



# ==========================================================================
# 示例：安装 python-dateutil 软件包
# ==========================================================================
sudo pip install python-dateutil
# 使用用户参数
pip install --user python-dateutil
# 升级安装 -U, --upgrade
sudo pip install --upgrade python-dateutil
# 安装不使用缓存
sudo pip install --no-cache-dir python-dateutil

# 多个版本pip和python 可以利用python固定版本
python3.7 -m pip install python-dateutil

# output:
# --------------------------------------------------------------------------
# Looking in indexes: http://mirrors.aliyun.com/pypi/simple/
# Collecting python-dateutil
#  Downloading http://mirrors.aliyun.com/pypi/packages/d4/70/d60450c3dd48ef87586924207ae8907090de0b306af2bce5d134d78615cb/python_dateutil-2.8.1-py2.py3-none-any.whl (227 kB)
#     |████████████████████████████████| 227 kB 1.2 MB/s
# Requirement already satisfied: six>=1.5 in /usr/local/python3.7/lib/python3.7/site-packages (from python-dateutil) (1.15.0)
# Installing collected packages: python-dateutil
# Successfully installed python-dateutil-2.8.1


# ==========================================================================
# 示例：卸载删除 软件包
# ==========================================================================
sudo pip uninstall qt-binder

# output:
# --------------------------------------------------------------------------
# Found existing installation: qt-binder 0.3
# Uninstalling qt-binder-0.3:
#  Would remove:
#    /usr/local/python3.7/lib/python3.7/site-packages/qt_binder-0.3-py3.7.egg-info
#    /usr/local/python3.7/lib/python3.7/site-packages/qt_binder/*
# Proceed (y/n)? y
#  Successfully uninstalled qt-binder-0.3


# ==========================================================================
# 示例：已安装软件包列表
# ==========================================================================
sudo pip list

# output:
# --------------------------------------------------------------------------
#Package        Version
#-------------- -------
#backports.lzma 0.0.14
#install        1.3.4
#msgpack        1.0.0
#packaging      20.4
#pip            20.2.4
#pyface         7.1.0
#pyparsing      2.4.7
#setuptools     39.0.1
#six            1.15.0
#toml           0.10.2
#traits         6.1.1
#traitsui       7.1.0


# ==========================================================================
# 示例： 输出安装版本格式软件包
# ==========================================================================
sudo pip freeze

# output:
# --------------------------------------------------------------------------
#backports.lzma==0.0.14
#install==1.3.4
#msgpack==1.0.0
#packaging==20.4
#pyface==7.1.0
#pyparsing==2.4.7
#PyQt-builder==1.5.0
#PyQt5==5.15.1
#PyQt5-sip==12.8.1
#PyQtWebEngine==5.15.1
#python-dateutil==2.8.1
#sip==5.4.0
#six==1.15.0
#toml==0.10.2
#traits==6.1.1
#traitsui==7.1.0


# ==========================================================================
# 示例：显示sip安装包的详细信息
# ==========================================================================
sudo pip show sip

# output:
# --------------------------------------------------------------------------
#Name: sip
#Version: 5.4.0
#Summary: A Python bindings generator for C/C++ libraries
#Home-page: https://www.riverbankcomputing.com/software/sip/
#Author: Riverbank Computing Limited
#Author-email: info@riverbankcomputing.com
#License: SIP
#Location: /usr/local/python3.7/lib/python3.7/site-packages
#Requires: toml, packaging
#Required-by: PyQt-builder


# ==========================================================================
# 示例：验证安装的软件包和依赖软件包是否兼容
# ==========================================================================
sudo pip check sip

# output:
# --------------------------------------------------------------------------
# No broken requirements found.


# ==========================================================================
# 示例：软件包配置管理
# --------------------------------------------------------------------------
# Usage:
#  pip config [<file-option>] list
#  pip config [<file-option>] [--editor <editor-path>] edit
#
#  pip config [<file-option>] get name
#  pip config [<file-option>] set name value
#  pip config [<file-option>] unset name
#  pip config [<file-option>] debug
# ==========================================================================
sudo pip config list

# output:
# --------------------------------------------------------------------------
# global.index-url='http://mirrors.aliyun.com/pypi/simple/'
# install.trusted-host='mirrors.aliyun.com'


# ==========================================================================
# 示例：在PyPI中搜索软件包
# ==========================================================================
# 出现ssl异常，不支持 https
sudo pip search sip

# output:
# --------------------------------------------------------------------------
#WARNING: Retrying (Retry(total=4, connect=None, read=None, redirect=None, status=None)) after connection broken by 'SSLError("Can't connect to HTTPS URL because the SSL module is not available.")': /pypi

# 上面出现ssl异常，不支持 https，设置 http
sudo pip search sip -i http://pypi.org/pypi

# 将此主机或host：端口对标记为受信任，即使它没有有效的HTTPS或任何HTTPS
sudo pip search sip -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

# output:
# --------------------------------------------------------------------------
#PyQt5-sip (12.8.1)               - The sip module support for PyQt5
#  INSTALLED: 12.8.1 (latest)
#sip-models (0.1.2)               - Spectral induced polarization (SIP) models based on the Cole-Cole model
#sip (5.4.0)                      - A Python bindings generator for C/C++ libraries
#  INSTALLED: 5.4.0 (latest)
#file-cache-sip (0.0.1)           - Simple File Cache based on pickle or json
#django-sip-phonebook (1.0.15)    - Django based phonebook for Granstream telephones.


# ==========================================================================
# 示例：检查并管理pip的缓存
# --------------------------------------------------------------------------
# Usage:
#  pip cache dir
#  pip cache info
#  pip cache list [<pattern>]
#  pip cache remove <pattern>
#  pip cache purge
# ==========================================================================
# 仅为此运行而无需使用缓存安装软件包。
sudo pip install --no-cache-dir package
# 将pip配置为不“全局”使用缓存（在所有命令中）
sudo pip config set global.cache-dir false

# 从pip的缓存中删除所有与matplotlib相关的wheel文件
pip cache remove matplotlib
# 清除pip缓存中的所有文件
pip cache purge
# 缓存列表
pip cache list
# 缓存所在目录
pip cache dir
# output:
# --------------------------------------------------------------------------
#/home/vagrant/.cache/pip

# 查询 cache 信息
pip cache info
# output:
# --------------------------------------------------------------------------
#Location: /home/vagrant/.cache/pip/wheels
#Size: 0 bytes
#Number of wheels: 0


# ==========================================================================
# 示例：计算软件包的hash
# ==========================================================================
$ sudo pip hash /usr/local/python3.7/lib/python3.7/site-packages/sip-5.4.0.dist-info/WHEEL

# output:
# --------------------------------------------------------------------------
#/usr/local/python3.7/lib/python3.7/site-packages/sip-5.4.0.dist-info/WHEEL:
#--hash=sha256:7da05e38c54c53a7d7aa0af4fdff1ffd5408355ae65abd8fdf993ce224a405e7


read exits