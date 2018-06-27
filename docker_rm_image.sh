#!/bin/bash 

# 删除已停止的容器
sudo docker ps -q -a | xargs sudo docker rm
# 删除无效的镜像
sudo docker rmi $(sudo docker images | grep "^" | awk '{print $3}')


sudo docker rmi $(sudo docker images | grep "<none>" | awk '{print $3}')