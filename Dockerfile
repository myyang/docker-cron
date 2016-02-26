from python:3.4.3

run apt-get update && apt-get install -y cron

add service-cron /etc/cron.d/service-cron

add pre-cron-settings.sh start-service.sh /
cmd ["/start-service.sh"]
