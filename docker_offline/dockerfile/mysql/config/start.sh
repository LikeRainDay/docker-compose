#!/bin/bash

echo '开启mysql'
# service mysql stop
# echo `service mysql status`
service mysql restart
echo `service mysql status`