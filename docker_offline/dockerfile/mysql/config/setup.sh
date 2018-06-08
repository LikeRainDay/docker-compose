#!/bin/bash

set -e


# 查看当前mysql服务的状态，方便调试。
echo `service mysql status`

echo "1. 启动mysql"
service mysql start 
sleep 3

echo "2.导入数据..."
mysql < /houshuai_config/scheme.sql

echo "3.导入数据完毕"
sleep 3

echo `service mysql status`

# 重新设置mysql 密码
echo '4.开始修改密码并开启远程...'
mysql < /houshuai_config/privilege.sql
echo '5.修改密码完毕...'

echo `service mysql status`
echo 'mysql 容器启动完毕，并输入导入成功'

# 进行监控日志
tail -f /dev/null