#!/bin/bash

git pull git@gitlab.com:brilliant-data/tableau-embed-backend


PROCESS_NUM=`ps -ef | grep "[3]6420" | wc -l`

if [ "$PROCESS_NUM" -gt "0" ]
then
    echo "The service is running."
else
    echo "Service is not running. Starting..."
    nohup mvn -Djetty.port=36420 clean package jetty:run &
fi