

# 进行拉起容器
COMPOSE_PROJECT_NAME=zk_test docker-compose up -d

# 进行连接尝试
docker run -it --rm \
         --link zoo1:zk1 \
         --link zoo2:zk2 \
         --link zoo3:zk3 \
         --net zktest_default \
         zookeeper zkCli.sh -server zk1:2181,zk2:2181,zk3:2181
