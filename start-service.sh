#!/bin/bash

source pre-cron-settings.sh

echo -e "
setup cron jobs in /etc/cron.d/service-cron
cronjobs:
$(cat /etc/cron.d/service-cron)
"
crontab /etc/cron.d/service-cron
chmod 644 /etc/cron.d/service-cron
touch /var/log/service.log


echo -e "
start cron and follow log...
"
cron && tail -f /var/log/service.log
