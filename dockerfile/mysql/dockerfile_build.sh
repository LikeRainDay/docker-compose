#!/bin/bash




echo "进行开始编译定制化的mysql容器"

echo `docker build -t haizhi/msql:5.6 .`


# echo "构建完成"

# echo "启动容器"
# docker run -d -p 3306:3306 haizhi/msql:5.6