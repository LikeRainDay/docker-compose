#!/bin/bash 

echo "停止正在使用的"
docker stop  `docker ps -a| grep haizhi   |awk '{print $1}'`
docker stop  `docker ps -a| grep model-market |awk '{print $1}'`

echo "正在开启容器"
docker restart haizhi-redis
docker restart haizhi-mysql
docker restart model-market-sh

echo "容器开启完毕，稍等5s后访问"
open "http://localhost:8089/"