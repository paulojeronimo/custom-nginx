#!/bin/sh
HOSTNAME=$(hostname)
envsubst '$HOSTNAME' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
exec nginx -g 'daemon off;'
