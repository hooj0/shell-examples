#!/bin/sh

# --------------------------------------------------------------------------
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2020-11-05
# copyright by hoojo@2020
# ==========================================================================
#       pip ——— python 软件包管理
# ==========================================================================
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
#  check                       Verify installed packages have compatible dependencies.
#  config                      Manage local and global configuration.
#  search                      Search PyPI for packages.
#  cache                       Inspect and manage pip's wheel cache.
#  wheel                       Build wheels from your requirements.
#  hash                        Compute hashes of package archives.
#  completion                  A helper command used for command completion.
#  debug                       Show information useful for debugging.
#  help                        Show help for commands.
# --------------------------------------------------------------------------



# ==========================================================================
# 示例：安装 python-dateutil 软件包
# ==========================================================================
sudo pip install python-dateutil

# 使用用户参数
pip install --user python-dateutil

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
# WARNING: The directory '/home/vagrant/.cache/pip' or its parent directory is not owned or is not writable by the current user. The cache has been disabled. Check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
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
# 示例：
# ==========================================================================


# output:
# --------------------------------------------------------------------------
#


# ==========================================================================
# 示例：
# ==========================================================================


# output:
# --------------------------------------------------------------------------
#


# ==========================================================================
# 示例：
# ==========================================================================


# output:
# --------------------------------------------------------------------------
#




read exits