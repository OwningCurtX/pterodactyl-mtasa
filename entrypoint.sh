#!/bin/bash
set -e
cd /home/container

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
exec "./${MODIFIED_STARTUP}" -n -t -u
