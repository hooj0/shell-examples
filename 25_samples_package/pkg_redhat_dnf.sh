#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2020-11-06
# copyright by hoojo@2020
# @changelog Added package `dnf` shell command example




# ==========================================================================
#       dnf ———— red hat 系 linux 包管理器
# ==========================================================================
# DNF(Dandified Yum)是新一代的 RPM 软件包管理器。
# DNF 包管理器克服了 YUM 包管理器的一些瓶颈，提升了包括用户体验，内存占用，依赖分析，运行速度等多方面的内容。
# DNF 使用 RPM, libsolv 和 hawkey 库进行包管理操作，Fedora22 已经默认使用DNF。
# --------------------------------------------------------------------------
# DNF 并未默认安装在 RHEL 或 CentOS7 系统中，但可以在使用 YUM 的同时使用DNF
#
# 安装epel-release依赖：
#       yum install epel-release 或者 yum install epel-release -y
# 安装DNF包：
#       yum install dnf 或者 yum install dnf -y
# --------------------------------------------------------------------------
# 版本
#   dnf –version        # 查看DNF包管理器版本
#
# 帮助
#   dnf help            # 查看所有的DNF命令及其用途
#   dnf help <command>  # 获取命令的使用帮助
#   dnf history         # 查看 DNF 命令的执行历史
#
# 信息查看
#   dnf repolist        # 查看系统中可用的DNF软件库
#   dnf search <package>  # 搜索软件库中的RPM包
#   dnf list installed  # 列出所有安装的RPM包
#   dnf list available  # 列出所有可安装的RPM包
#   dnf info <package>  # 查看软件包详情
#   dnf provides <file>  # 查找某一文件的提供者
#
# 软件包操作
#   dnf install <package>   # 安装软件包及其所需的所有依赖
#   dnf update <package>    # 升级软件包
#   dnf remove <package>    # 删除软件包
#   dnf reinstall <package>  # 重新安装特定软件包
#   dnf distro-sync         # 更新软件包到最新的稳定发行版
#
# 系统软件包
#   dnf check-update    # 检查系统所有软件包的更新
#   dnf update          # 升级所有系统软件包
#   dnf clean all       # 删除缓存的无用软件包
# --------------------------------------------------------------------------



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