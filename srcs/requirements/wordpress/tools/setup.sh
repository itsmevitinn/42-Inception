#!/bin/sh

if [ ! -d "/var/www/html" ]
then
	mkdir -p /var/www/html
fi

cd /var/www/html
wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x /usr/local/bin/wp
wp core download --allow-root --locale=en_US
wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST}
wp core install --allow-root --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email
wp user create ${WP_USER} ${WP_EMAIL} --user_pass=${WP_PASSWORD} --role=author

exec php-fpm7 -F