#!/bin/sh

echo "$SSL_CERTIFICATE" > /etc/nginx/nginx-selfsigned.crt
echo "$SSL_PRIVATE_KEY" > /etc/nginx/nginx-selfsigned.key

exec nginx