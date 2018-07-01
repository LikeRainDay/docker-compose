#!/bin/bash

echo "开始启动节点"
./hadoop${HADOOP_VERSION}/sbin/stop-dfs.sh
./hadoop${HADOOP_VERSION}/sbin/stop-yarn.sh