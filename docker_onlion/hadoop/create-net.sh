#!/bin/bash

# 进行创建对应的内容

echo "准备安装环境"
brew install wget bridget-utils -y


brctl show

echo "进行安装"
wget https://github.com/jpetazzo/pipework/archive/master.zip \
    && unzip master.zip \
    && mv pipework-master pipework \
    && cp -rp pipework/pipework /usr/local/bin/pipework \
    && rm -rf pipework-master.zip

echo "创建网络"

brctl addbr br0
ip link set dev br0 up
ip addr add 192.168.2.1/24 dev br0

echo "给容器设置固定ip"
/usr/local/bin/pipework br0 hadoop-master 192.168.2.10/24
/usr/local/bin/pipework br0 hadoop-slave1 192.168.2.11/24
/usr/local/bin/pipework br0 hadoop-slave2 192.168.2.12/24
/usr/local/bin/pipework br0 hadoop-slave3 192.168.2.13/24