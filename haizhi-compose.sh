#!/bin/bash 

# 进行根据类型进行启动或关闭
case "$1" in
    'up')
        echo "正在开启容器组件"
        docker-compose up -d
        ;;
    'stop')
        echo "正在关闭容器组件"
        docker-compose down
        ;;
    'images')
        echo "正在查看容器"
        docker-compose images
        ;;
    'ps')
        echo "当前正在运行的容器"
        docker-compose ps
        ;;
    'stop-all-haizhi')
        echo "停止所有的容器"
        docker stop  `docker ps -a| grep  haizhi |awk '{print $1}'`
        ;;
    'exec')
         echo "进入容器"
        docker-compose exec $2 bash
        ;;
    'logs')
        echo "进行查看容器的log"
        docker-compose logs $2
        ;;
    'down')
        echo "进行关闭当前的compose"
        docker-compose down
        ;;
    *)
        echo ""Usage: $SELF start|stop|images|ps""
        exit 1
        ;;
esac

exit 0
 


