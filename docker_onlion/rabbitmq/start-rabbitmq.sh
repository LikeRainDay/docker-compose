#!/bin/bash 

# 进行开启Rabbit 功能

docker run -d --hostname rabbit --name rabbit -e RABBITMQ_DEFAULT_USER=rabbitadmin -e RABBITMQ_DEFAULT_PASS=rabbitpwd -p 15672:15672 rabbitmq:3-management