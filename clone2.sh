#!/bin/bash

PROCESS_NUM=`ps -ef | grep "[b]la" | wc -l`

if [ "$PROCESS_NUM" -gt "0" ]
then
    echo "fut a process"
else
    echo "nem fut a process"
fi
