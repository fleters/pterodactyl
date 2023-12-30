#!/bin/bash
cd /home/container
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
clear
java -version
${MODIFIED_STARTUP}