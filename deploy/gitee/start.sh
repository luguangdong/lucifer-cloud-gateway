#!/bin/bash
nohup java  -Xms128m -Xmx128m -Xmn128m -Dproject.name=gateway -jar /data/deploy/lucifer-cloud/gateway/gateway.jar  --spring.profiles.active=tencent > log &
