#!/bin/bash


docker rm  `docker ps -a| grep none |awk '{print $1}'`
