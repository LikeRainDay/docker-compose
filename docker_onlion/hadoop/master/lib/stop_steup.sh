#!/bin/bash

echo "开始启动节点"
./hadoop${HADOOP_VERSION}/sbin/start-dfs.sh
./hadoop${HADOOP_VERSION}/sbin/start-yarn.sh