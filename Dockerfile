FROM nginx:latest
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY entrypoint.sh /entrypoint.sh
CMD ["/bin/sh", "/entrypoint.sh"]
