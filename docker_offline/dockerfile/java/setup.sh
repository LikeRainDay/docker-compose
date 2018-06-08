#!/bin/bash 


echo "进行杀死当前此项目运行的jar"
kill -s 9 `ps -aux | grep model-market | awk '{print $2}'`

echo "进行运行java包"
nohup java -jar /jar/model-market.jar > /log/stdio.log 2>&1 &

echo "进行检测日志"
tail -f /log/stdio.log
