#!/bin/bash

echo "开始进行load对应镜像到docker中"


# 进行设置当前的镜像地址
docker_load_dir = ./docker_load_file


# 保存命令为 docker save -o updata.tar update

echo "执行导入操作"
docker load < $docker_load_dir/doccker-redis.tar
docker load < $docker_load_dir/doccker-mysql-5-6.tar
# docker load < $docker_load_dir/doccker-centos.tar
docker load < $docker_load_dir/java8.tar
docker load < $docker_load_dir/tomcat.tar
docker load < $docker_load_dir/nginx.tar


echo "执行运行mysql操作"
docker run -it -p 3306:3306 --name haizhi-mysql-master -d mysql:5.6

echo "执行运行redis操作"
docker run -it -p 6379:6379 --name haizhi-redis-master -d redis

# echo "执行运行tomcat"
# docker run -it -p 8080:8080 --name haizhi-tomcat -d tomcat