# backup-your-access-logs
This script backs up your compressed apache access/error log to the certain directory.
e.g. /root/logs_storage

When running the script, make sure to perform:
```# chmod u+x logs_apache.sh```

For performing automatically, use logrotate:

```#vi /etc/logrotate.d/httpd```

```httpd
/var/log/httpd/*log {
    daily
    compress
    missingok
    rotate 7
    notifempty
    sharedscripts
    delaycompress
    postrotate
        /sbin/service httpd reload > /dev/null 2>/dev/null || true
        /home/vagrant/workspace/logs_apache.sh
    endscript
}
```

