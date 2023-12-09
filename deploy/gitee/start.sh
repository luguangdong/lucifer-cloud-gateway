#!/bin/bash
source /etc/profile
FILEPATH=/data/deploy/lucifer-cloud/gateway
JARFILE=gateway.jar
ENV=tencent
pid=`ps -ef | grep $JARFILE | grep -v grep | awk '{print $2}'`
echo "旧服务进程pid=$pid"
if [ -n "$pid" ]
then
	kill -9 $pid
	echo "关闭服务 $JARFILE 成功"
fi
nohup java  -Xms128m -Xmx128m -Xmn128m -jar $FILEPATH/$JARFILE  --spring.profiles.active=$ENV > log &
pid=`ps -ef | grep $JARFILE | grep -v grep | awk '{print $2}'`
echo "新服务进程pid=$pid"
echo "启动服务 $JARFILE 成功"
set -e
