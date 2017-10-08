#!/bin/bash
sleep 2

cd /home/container

#set -e
#-n -t -u
exec ${STARTUP} 
