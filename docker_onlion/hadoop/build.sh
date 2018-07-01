#!/bin/bash

set -e

TAG=3.1.0

build() {
    NAME=$1
    IMAGE=houshuai0816/hadoop-$NAME:$TAG
    cd $([ -z "$2" ] && echo "./$NAME" || echo "$2")
    echo '--------------------------' building $IMAGE in $(pwd)
    docker build -t $IMAGE .
    cd -
}

build base
build master
build worker
