#!/bin/bash 

# 进行开启Rabbit 功能

docker run -d --hostname rabbit --name txt-rabbitmq -e RABBITMQ_DEFAULT_USER=houshuai -e RABBITMQ_DEFAULT_PASS=houshuai -p 15672:15672 rabbitmq:3-management