#!/bin/bash

echo "正在构建镜像"
docker build -t model-market .

echo "正在进行停止已开启的容器"
docker stop  `docker ps -a| grep model-market |awk '{print $1}'`
docker rm  `docker ps -a| grep model-market |awk '{print $1}'`

echo "启动容器"
docker run -it -p 8089:8089   --name model-market-wh  -d model-market

echo "查看logs"
docker logs model-market-wh