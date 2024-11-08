#!/bin/sh
envsubst < /etc/prometheus/prometheus.yml.template > /tmp/prometheus.yml
mv /tmp/prometheus.yml /etc/prometheus/prometheus.yml
/bin/prometheus --config.file=/etc/prometheus/prometheus.yml \
  --web.config.file=/etc/prometheus/web.yml \
  --web.enable-admin-api \
  --web.enable-lifecycle
