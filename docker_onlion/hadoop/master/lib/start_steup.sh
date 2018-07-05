#!/bin/bash

echo "启动ssh"
# CMD [ "sh", "-c", "service ssh start; bash" ]

service ssh start

echo "开始启动节点"
./hadoop/sbin/start-dfs.sh
./hadoop/sbin/start-yarn.sh