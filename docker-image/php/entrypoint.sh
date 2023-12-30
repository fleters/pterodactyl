#!/bin/bash
cd /home/container
php -version
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
clear
${MODIFIED_STARTUP}