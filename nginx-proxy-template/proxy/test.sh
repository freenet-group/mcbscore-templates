#!/bin/sh

#service nginx configtest
/usr/sbin/nginx -t

if [ $? -eq 0 ]; then
  echo "Konfigurationstest OK"
else
  echo "Konfigurationstest fehlgeschlagen" && exit 1
fi