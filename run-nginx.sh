#!/bin/bash

## generate nginx config
cat <<NGINX > /etc/nginx/conf.d/default.conf
server {
    listen       80;
    listen  [::]:80;
    server_name  pengliu.me;

    #access_log  /var/log/nginx/host.access.log  main;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }
}
server {
    listen       80;
    listen  [::]:80;
    server_name  imgs.pengliu.me;

    location / {
        root /home/vsftpd/${FTP_USER};
        autoindex on;
    }
}
NGINX

nginx -c /etc/nginx/nginx.conf
