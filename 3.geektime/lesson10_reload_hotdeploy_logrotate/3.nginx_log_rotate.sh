#!/bin/bash
CUR_LOGS_PATH=/usr/local/nginx/logs
YESTERDAY=$(date -d "yesterday" +%Y-%m-%d)
#将当前的日志重命名
mv ${CUR_LOGS_PATH}/access.log /tmp/access_${YESTERDAY}.log
#相当于nginx -s reopen
#kill -USR1 $(cat /usr/local/nginx/logs/nginx.pid)
nginx -s reopen

