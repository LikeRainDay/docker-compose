#!/bin/bash

echo "开始关闭节点"
./hadoop/sbin/stop-dfs.sh
./hadoop/sbin/stop-yarn.sh