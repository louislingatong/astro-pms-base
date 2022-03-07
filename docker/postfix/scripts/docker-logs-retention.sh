#! /bin/bash

mailReceiver=info-gosmart@neomars.co.jp

rm /tmp/docker-container-logs.zip

cd /var/log/docker-containers

zip -r /tmp/docker-container-logs ./* -i '*.log'

echo "" | mail -s "Weekly docker container logs" "$mailReceiver" -A /tmp/docker-container-logs.zip
