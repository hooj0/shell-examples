#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create:   2020-10-27
# copyright by hoojo@2020
# @changelog Added package `make` shell command example




# =================================================================================
#           源码二进制文件编译和安装程序
# =================================================================================
# 配置安装目录
#   ./configure --prefix=/usr/local/python3.7 # (设置python3.7.3的安装路径)
#       ./configure是为了检测目标安装平台的特征，
#       并且检查依赖的软件包是否可用或者是否缺少依赖软件包，
#       configure事实上是个脚本，最终的目的是生成Makefile
# 编译 并安装
#   make
#       如果 configure 指令没有报错，会生成一个Makefile，make指令就是编译这个源码包
#   make install
#       正常编译完之后如果没有报错，就生成了可执行文件，
#       make install指令就是将可执行文件放到指定目录并配置环境变量，允许我们在任何目录下使用这个软件
# ---------------------------------------------------------------------------------
# 源码安装的优点
#   如果是对源码进行学习或者优化、修改源码的用户，这种方式比较实用
# 源码安装的缺点
#   不友好，安装中途出错，定位或修复问题过于复杂
#       ./configure 报错： 如果检查到缺少依赖或者依赖文件的版本不匹配呢？
#           一般出现这种情况，就自己解决吧，一般的做法是，升级软件包或者安装缺少的依赖软件包，
#           运气好的话，解决报错的依赖问题就行了，运气不好的话，A软件包依赖B，B又依赖C.....
#           这是比较常见的linux劝退方式，从入门到放弃！
#       make 报错，由于源码包的形式多是个人用户更新维护的，
#           所以可能出现一些平台没测试到位或者在特定平台上程序出现bug的情况，
#           这种情况就没办法了，如果你有能力debug那当然另说
#       make install 报错，这个指令报错的形式一般仅仅是没有权限，加上sudo就行。
#           但是同时因为源码包多由个人维护，也经常可能出现造成系统垃圾的情况，
#           又或者你需要卸载的时候 make uninstall 指令仅仅卸载可执行文件，其他配置文件和依赖文件不作处理。
# ---------------------------------------------------------------------------------




# =================================================================================
# 示例： 从源码编译安装 二进制 python
# =================================================================================
# 查看系统中安装过的 python 版本
ls -l /usr/bin | grep python


# 一、先安装需要的包zlib1g, libffi
# ---------------------------------------------------------------------------------
# 更新 软件源 metadata 列表
sudo apt-get update
# 通过更新后的列表中选择安装 对应版本的软件
sudo apt-get install zlib1g-dev
sudo apt-get install libffi-dev


# 二、在ubuntu上创建/usr/local/python3.7.1的目录，将压缩包放到该目录
# ---------------------------------------------------------------------------------
sudo mkdir -p /usr/local/python3.7.1

# 把压缩包放进去
cd /usr/local/python3.7
sudo tar -zxvf Python-3.7.1.tgz
cd Python-3.7.1


# 三、安装
# ---------------------------------------------------------------------------------
# 配置安装目录

# ./configure
# 则安装后可执行文件默认放在/usr/local/bin，
# 库文件默认放在/usr/local/lib，
# 配置文件默认放在/usr/local/include，
# 其它的资源文件放在/usr/local/share

# ./configure --prefix=/usr/local/python3.7.1
# 则可执行文件放在/usr/local/python3.7.1/bin，
# 库文件放在/usr/local/python3.7.1/lib，
# 配置文件放在/usr/local/python3.7.1/include，
# 其它的资源文件放在/usr/local/python3.7.1/share
sudo ./configure --prefix=/usr/local/python3.7.1 # (设置python3.7.1的安装路径)
sudo ./configure --prefix=/usr/local/python3.7.1 --enable-shared
sudo ./configure --prefix=/usr/local/python3.7.1 --enable-shared CFLAGS=-fPIC
sudo ./configure  --enable-optimizations --with-ssl
# 编译
sudo make
# 检查
sudo make check
# 测试
sudo make test
# 并安装
sudo make install


# 四、添加环境变量
# ---------------------------------------------------------------------------------
PATH=$PATH:$HOME/bin:/usr/local/python3.7.1/bin


# 五、更新python默认指向为python3.7
# ---------------------------------------------------------------------------------
# 查看python命令指向
ls -l /usr/bin | grep python
ll /usr/bin/python*

# 删除原有链接
# sudo rm /usr/bin/python
# 建立新链接
# sudo ln -s /usr/bin/python3.7 /usr/bin/python

# 建立软连接
sudo mv /usr/bin/python /usr/bin/python.bak
sudo ln -s /usr/local/python3.7.1/bin/python3.7 /usr/bin/python
sudo mv /usr/bin/pip /usr/bin/pip.bak
sudo ln -s /usr/local/python3.7.1/bin/pip3 /usr/bin/pip


# =================================================================================
# 示例：源码安装的流程三部曲
# =================================================================================
# 源码安装配置
./configure
# 编译
make
# 安装
make install


read exits