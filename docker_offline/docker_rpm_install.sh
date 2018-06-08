#!/bin/bash

# 进行安装CreateRepo
docker_rmp_dir = './docker_rpm'
TempFileDir = '/home/houshuai'
CreateRepoFile = "$TempFileDir/docker_rpm/createrepo"
DockerRmpFileDir = "$TempFileDir/docker_rpm"

echo "进行将当前目录进行拷贝到Linux制定目录上"
cp -rf $docker_rmp_dir $TempFileDir

echo "进行安装包管理器"
rpm -ivh $CreateRepoFile/deltarpm-3.6-3.el7.x86_64.rpm && \
rpm -ivh $CreateRepoFile/python-deltarpm-3.6-3.el7.x86_64.rpm && \
rpm -ivh $CreateRepoFile/createrepo-0.9.9-28.el7.noarch.rpm

# 更改离线rpm仓库

echo "删除本地配置内容"
rm -rf /etc/yum.repos.d/
cd /etc
mkdir yum.repos.d

echo "将配置文件进行导入到对应"
cp  $CreateRepoFile/docker.repo /etc/yum.repos.d/


echo "设置本地源"
createrepo -d $DockerRmpFileDir

echo "查看是否构建了本地源"
yum repolist

echo "清楚缓存"
yum clean all

echo "创建缓存"
yum makecache

echo "进行安装docker"
yum install docker -y

echo "讲docker 进行设置自动启动"
systemctl enable docker

# echo "进行重新启动docker"
# shutdown -r now