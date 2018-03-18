#!/bin/bash

## generate nginx config
cat <<NGINX > /etc/nginx/conf.d/default.conf
server {
   listen 80;
   server_name _;

   root /home/vsftpd/${FTP_USER};
   autoindex on;
 }
NGINX

nginx -c /etc/nginx/nginx.conf
