#!/bin/bash
sleep 2

cd /home/container

set -e
exec ${STARTUP} -n -t -u
