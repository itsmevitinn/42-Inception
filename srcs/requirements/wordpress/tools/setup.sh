#!/bin/sh

# Allow connections from any IP address
sed -i 's#listen = 127.0.0.1:9000#listen = 0.0.0.0:9000#' /etc/php7/php-fpm.d/www.conf
mkdir -p /var/www/html
cd /var/www/html
wp core download --allow-root --locale=en_US
wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST}
wp core install --allow-root --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email
wp user create ${WP_USER} ${WP_EMAIL} --user_pass=${WP_PASSWORD} --role=author

exec php-fpm7 -F