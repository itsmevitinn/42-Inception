#!/bin/sh

echo "-----BEGIN CERTIFICATE-----" > /etc/nginx/nginx-selfsigned.crt
echo $SSL_CERTIFICATE >> /etc/nginx/nginx-selfsigned.crt
echo -n "-----END CERTIFICATE-----" >> /etc/nginx/nginx-selfsigned.crt

echo "-----BEGIN PRIVATE KEY-----" > /etc/nginx/nginx-selfsigned.key
echo $SSL_PRIVATE_KEY >> /etc/nginx/nginx-selfsigned.key
echo -n "-----END PRIVATE KEY-----" >> /etc/nginx/nginx-selfsigned.key

exec nginx