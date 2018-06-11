#!/bin/bash
# 进行安装docker-compose 离线版本


# 进行解压
tar -xzvf compose-1.21.2.tar.gz 

# 赋予权限
chmod +x /compose-1.21.2/bin/docker-compose

# 增加文件的路径
file_path=$PWD

# 进行设置环境变量(永久性)
echo "$PATH:$file_path/compose-1.21.2/bin" >> /etc/profile
echo "export PATH" >> /etc/profile

source /etc/profile




