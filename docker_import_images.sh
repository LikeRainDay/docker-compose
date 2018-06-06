#!/bin/bash

echo "开始进行import对应镜像到docker中"


# 进行设置当前的镜像地址
docker_import_dir = ./docker_import_file


echo "执行import操作"
docker import -redis < $docker_load_dir/redis.tar
docker import -mysql:5.6 < $docker_load_dir/mysql5-6.tar
# docker load < $docker_load_dir/doccker-centos.tar
docker import -java:8 < $docker_load_dir/java8.tar
# docker import -tomcat < $docker_load_dir/tomcat.tar


