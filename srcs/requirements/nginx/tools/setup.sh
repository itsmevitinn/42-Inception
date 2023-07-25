#!/bin/bash

echo -e $SSL_CERTIFICATE >> /etc/nginx/nginx-selfsigned.crt
echo -e $SSL_PRIVATE_KEY >> /etc/nginx/nginx-selfsigned.key

exec nginx