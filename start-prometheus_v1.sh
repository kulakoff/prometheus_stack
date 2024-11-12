#!/bin/sh
envsubst < /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml
exec /bin/prometheus --config.file=/etc/prometheus/prometheus.yml --web.config.file=/etc/prometheus/web.yml \
  --web.enable-admin-api --web.enable-lifecycle
