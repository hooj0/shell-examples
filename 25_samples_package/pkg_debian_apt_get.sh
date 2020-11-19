#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2020-10-27
# copyright by hoojo@2020
# @changelog Added package `apt get` shell command example




# =====================================================================================
#       apt-get 包管理/应用程序管理器
# =====================================================================================
# 用于自动从互联网的软件仓库中搜索、安装、升级、卸载软件或操作系统
# 官网包查找：
#   https://packages.ubuntu.com/
# -------------------------------------------------------------------------------------
# apt-get --help
#
# apt 1.2.32ubuntu0.1 (amd64)
#   用法： apt-get [选项] 命令
#　　　 apt-get [选项] install|remove 软件包1 [软件包2 ...]
#　　　 apt-get [选项] source 软件包1 [软件包2 ...]
#
# apt-get 是一个用于下载和安装软件包的简易命令行界面。
# 最常用命令是 update 和 install。
#
# 命令：
#   update - 取回更新的软件包列表信息
#   upgrade - 进行一次升级
#   install - 安装新的软件包(注：软件包名称是 libc6 而非 libc6.deb)
#   remove - 卸载软件包
#   autoremove - 卸载所有自动安装且不再使用的软件包
#   purge - 卸载并清除软件包的配置
#   source - 下载源码包文件
#   build-dep - 为源码包配置所需的编译依赖关系
#   dist-upgrade - 发布版升级，见 apt-get(8)
#   dselect-upgrade - 根据 dselect 的选择来进行升级
#   clean - 删除所有已下载的包文件
#   autoclean - 删除已下载的旧包文件
#   check - 核对以确认系统的依赖关系的完整性
#   changelog - 下载指定软件包，并显示其changelog
#   download - 下载指定的二进制包到当前目录
#
# 选项：
#  -h  本帮助文档。
#  -q  让输出可作为日志 - 不显示进度
#  -qq 除了错误外，什么都不输出
#  -d  仅仅下载 - 【不】安装或解开包文件
#  -s  不作实际操作。只是依次模拟执行命令
#  -y  对所有询问都回答是(Yes)，同时不作任何提示
#  -f  当出现破损的依赖关系时，程序将尝试修正系统
#  -m  当有包文件无法找到时，程序仍尝试继续执行
#  -u  显示已升级的软件包列表
#  -b  在下载完源码包后，编译生成相应的软件包
#  -V  显示详尽的版本号
#  -c=? 读取指定配置文件
#  -o=? 设置任意指定的配置选项，例如 -o dir::cache=/tmp
# 请查阅 apt-get(8)、sources.list(5) 和 apt.conf(5)的参考手册
# 以获取更多信息和选项。
#                       本 APT 具有超级牛力
# -------------------------------------------------------------------------------------
# apt-get update
#   在修改/etc/apt/sources.list或/etc/apt/preferences之后运行该命令。
#   此外需要定期运行这一命令以确保您的软件包列表是最新的。
# apt-get install packagename
#   安装一个新软件包（参见下文的aptitude）
# apt-get remove packagename
#   卸载一个已安装的软件包（保留配置文档）
# apt-get remove --purge packagename
#   卸载一个已安装的软件包（删除配置文档）
# apt-get autoremove packagename
#   删除包及其依赖的软件包
# apt-get autoremove --purge packagname
#   删除包及其依赖的软件包+配置文件，比上面的要删除的彻底一点
# dpkg --force-all --purge packagename
#   有些软件很难卸载，而且还阻止了别的软件的应用，就能够用这个，但是有点冒险。
# apt-get autoclean
#   apt会把已装或已卸的软件都备份在硬盘上，所以假如需要空间的话，能够让这个命令来删除您已卸载掉的软件的备份。
# apt-get clean
#   这个命令会把安装的软件的备份也删除，但是这样不会影响软件的使用。
# apt-get upgrade
#   可以使用这条命令更新软件包，apt-get upgrade不仅可以从相同版本号的发布版中更新软件包，
#   也可以从新版本号的发布版中更新软件包，尽管实现后一种更新的推荐命令为apt-get dist-upgrade。
#   在运行apt-get upgrade命令时加上-u选项很有用（即：apt-get -u upgrade)。
#   这个选项让APT显示完整的可更新软件包列表。不加这个选项，你就只能盲目地更新。
#   APT会下载每个软件包的最新更新版本，然后以合理的次序安装它们。
#   注意在运行该命令前应先运行 apt-get update更新数据库，更新任何已安装的软件包。
# apt-get dist-upgrade
#   将系统升级到新版本。
# apt-cache search string
#   在软件包列表中搜索字符串。
# dpkg -l package-name-pattern
#   列出任何和模式相匹配的软件包。假如您不知道软件包的全名，您能够使用“*package-name-pattern*”。
# aptitude
#   周详查看已安装或可用的软件包。和apt-get类似，aptitude能够通过命令行方式调用，但仅限于某些命令——最常见的有安装和卸载命令。
#   由于aptitude比apt-get了解更多信息，能够说他更适合用来进行安装和卸载。
# apt-cache showpkg pkgs
#   显示软件包信息。
# apt-cache dumpavail
#   打印可用软件包列表。
# apt-cache show pkgs
#   显示软件包记录，类似于dpkg –print-avail。
# apt-cache pkgnames
#   打印软件包列表中任何软件包的名称。
# dpkg -S file
#   这个文档属于哪个已安装软件包。
# dpkg -L package
#   列出软件包中的任何文档。
# dpkg -l
#   列出所有已安装的软件包。
# apt-file search filename
#   查找包含特定文档的软件包（不一定是已安装的），这些文档的文档名中含有指定的字符串。
#   apt-file是个单独的软件包。您必须先使用apt-get install来安装他，然后运行apt-file update。
#   假如apt-file search filename输出的内容太多，
#   您能够尝试使用apt-file search filename | grep -w filename（只显示指定字符串作为完整的单词出现在其中的那些文档名）或类似方法，
#   例如：apt-file search filename | grep /bin/（只显示位于诸如/bin或/usr/bin这些文件夹中的文档，假如您要查找的是某个特定的执行文档的话，这样做是有帮助的）。
# apt-get autoclean
#   定期运行这个命令来清除那些已卸载的软件包的.deb文档。通过这种方式，您能够释放大量的磁盘空间。
#   假如您的需求十分迫切，能够使用apt-get clean以释放更多空间。这个命令会将已安装软件包裹的.deb文档一并删除。
#   大多数情况下您不会再用到这些.debs文档，因此假如您为磁盘空间不足而感到焦头烂额，这个办法也许值得一试。
# -------------------------------------------------------------------------------------




# ======================================================================================
# 示例：查找软件包
# ======================================================================================
# 列出已安装的所有软件包
dpkg -l

# 用于查找新包
sudo apt-cache
# 搜索软件包
sudo apt-cache search pkg_name
# 获取软件包的相关信息, 如说明、大小、版本等
sudo apt-cache show pkg_name
# 查看该软件包需要哪些依赖包
sudo apt-cache depends pkg_name
# 查看该软件包被哪些包依赖
sudo apt-cache rdepends pkg_name

# 检查是否有损坏的依赖
sudo apt-get check



# ======================================================================================
# 示例：安装软件包
# ======================================================================================
# 安装一个应用
sudo apt-get install pkg_name
# 安装，遇到提示直接 yes
sudo apt-get install -y pkg_name
# 静默安装，降低日志级别
sudo apt-get install -q pkg_name
# 安装新的软件包
sudo apt-get install pkg_name
# 安装多个软件包
sudo apt-get install pkg pkg2 pkg3
# 通配符安装，安装pkg_name_开头软件包
sudo apt-get install pkg_name_*
# 安装指定版本
sudo apt-get install pkg_name=version

# 重新安装
sudo apt-get --reinstall install pkg_name
# 安装源码包所需要的编译环境
sudo apt-get build-dep pkg_name
# 修复依赖关系
sudo apt-get -f install pkg_name
# 下载软件包的源码
sudo apt-get source pkg_name



# ======================================================================================
# 示例：卸载删除软件包
# ======================================================================================
# 卸载删除应用，只删除包的二进制文件。它不会触及配置文件
sudo apt-get remove pkg_name
# 删除软件包, 同时删除配置文件
sudo apt-get --purge remove pkg_name
# 清除包以及配置文件
# 如果“删除”特定软件并再次安装，系统将具有相同的配置文件。当然，再次安装时，系统会要求您覆盖现有的配置文件。
# 当你搞砸了程序的配置时，清除特别有用。您希望从系统中完全擦除其痕迹，并且可能重新开始。
sudo apt-get purge pkg_name

# 自动删除没有引用的软件包
sudo apt-get autoremove
sudo apt-get autoremove pkg_name
# 删除软件包, 删除配置文件,  删除不再使用的依赖包
sudo apt-get --purge autoremove pkg_name

# 清除 已下载的软件包 和 旧软件包
sudo apt-get clean && sudo apt-get autoclean



# ======================================================================================
# 示例：更新软件包源
# ======================================================================================
# 升级软件仓库列表
sudo apt-get update



# ======================================================================================
# 示例：升级软件包
# ======================================================================================
# 升级应用，不推荐使用
sudo apt-get upgrade
# 更新已安装的软件包（识别并处理依赖关系的改变）
sudo apt-get dist-upgrade



# ======================================================================================
# 示例：为源码包配置所需的编译依赖关系
# ======================================================================================
sudo apt-get build-dep calibre



# ======================================================================================
# 示例：更新软件数据源
# ======================================================================================
# 更新的时候可以看到有三种情况：
# 　 1）hit：包版本没有变化
#    2）ign：包被忽略了，可能有各种原因，但不是错误信息。
#    3）get：有一个新版本可用
sudo apt-get update


# 更新软件包数据库后，可以用下面的命令升级已安装的软件包
# ---------------------------------------------------------------------------------------
# 仅升级特定程序
sudo apt-get upgrade pkg_name
# 安装一个应用
sudo apt-get install pkg_name

# 获取 Ubuntu 代号
lsb_release -a

# codename 后面的就是我们自己的 Ubuntu 的代号:
# ---------------------------------------------------------------------------------------
# No LSB modules are available.
# Distributor ID: Ubuntu
# Description:    Ubuntu 16.04.7 LTS
# Release:        16.04
# Codename:       xenial


# 编辑源，
# 将自己的代号写入
# ---------------------------------------------------------------------------------------
# 阿里云源
deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
##測試版源
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
# 源碼
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
##測試版源
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse


# 清华大学源
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
##測試版源
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
# 源碼
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
##測試版源
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse




# 修改源文件 sources.list
# ---------------------------------------------------------------------------------------
# 修改前备份，在终端中执行以下命令：
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bcakup

# 打开 sources.list 文件，清空里面的内容，把上面我们编辑好的国内的源复制进去，保存后退出
sudo gedit /etc/apt/sources.list

# 更新软件列表和升级
sudo apt-get update


# ======================================================================================
# 示例：添加PPA 更新安装软件
# --------------------------------------------------------------------------------------
# 四个主要存储库是：
#   Main – 规范支持的免费开源软件
#   Universe - 社区维护的免费和开源软件
#   Restricted – 设备的专有驱动程序
#   Multiverse – 受版权或法律问题限制的软件
# ======================================================================================
# 列出添加在系统中的 PPA 存储库
apt policy

# 通过系统目录，查看已添加的 PPA 存储库
ls /etc/apt/sources.list.d

# 将 PPA 存储库添加到系统以从中下载软件
# --------------------------------------------------------------------------------------
sudo add-apt-repository ppa:ppa_name
sudo add-apt-repository ppa:user/ppa-name

# 更新软件列表
sudo apt update
sudo apt-get update

# 从添加的存储库中安装所需的软件包
sudo apt install package_name


# 从系统中删除添加的 PPA 存储库
# --------------------------------------------------------------------------------------
sudo add-apt-repository --remove ppa:ppa_name

sudo add-apt-repository --remove ppa:thomas-schiex/blender

# 清除存储库
# --------------------------------------------------------------------------------------
# 可以利用第三方工具 PPA Purge 完成清除操作
sudo apt-get install ppa-purge

# 可以使用以下命令语法清除添加的存储库：
ppa-purge ppa:ppa_name
ppa-purge ppa:thomas-schiex/blender

# 手动删除存储库
# 使用 rm 命令从该目录中手动删除 PPA：
sudo rm /etc/apt/sources.list.d/thomas-schiex-ubuntu-blender-bionic.list



read exits