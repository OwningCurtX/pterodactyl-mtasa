#!/bin/bash
sleep 2

cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Fix for Rust not starting
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
export NODE_DEBUG=fs
chown -R container:container /home/container/
chown -R container:container /home/container/latest.log
chmod 777 -R /home/container/
chmod 777 /home/container/latest.log

# Run the Server
node /wrapper.js "${MODIFIED_STARTUP}"
