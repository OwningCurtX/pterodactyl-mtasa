#!/bin/bash
sleep 2

cd /home/container

set -e
exec -n -t -u ${STARTUP} 
