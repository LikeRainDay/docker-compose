#!/bin/bash

set -e

TAG=6.3

build() {
    NAME=$1
    IMAGE=houshuai0816/elk-$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$NAME" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
build elastic
build filebeat
build kibana
build logstash
build rabbitmq