#!/bin/bash
cd /home/container
java -version
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "shell> ${MODIFIED_STARTUP}"
${MODIFIED_STARTUP}