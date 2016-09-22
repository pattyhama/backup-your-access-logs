#!/bin/bash
TODAY=`date +"%Y%m%d"`
HOST_NAME=hostname
DIR=`date +"%Y"`/`date +"%m"`/`date +"%d"`

mkdir -p /root/logs_storage/logs/apache_log/$DIR/$HOST_NAME 2>/dev/null
cp /var/log/httpd/access_log-$TODAY  /root/logs_storage/logs/apache_log/$DIR/$HOST_NAME/access_log 2>/dev/null
cp /var/log/httpd/error_log-$TODAY  /root/logs_storage/logs/apache_log/$DIR/$HOST_NAME/error_log 2>/dev/null
gzip /root/logs_storage/logs/apache_log/$DIR/$HOST_NAME/*
