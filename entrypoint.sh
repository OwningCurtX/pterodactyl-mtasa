#!/bin/bash
cd /home/container

set -e
exec ${STARTUP} -n -t -u
