#!/bin/bash




docker run -d -p 3306:3306  --name haizhi-mysql haizhi-mysql

docker run -d -p 8080:8089  --name haizhi-modle-market  modle-market

docker run -d -p 6379:6379 --name haizhi-redis redis

docker run -d -p 3306:3306  --name haizhi-mysql mysql:5.6