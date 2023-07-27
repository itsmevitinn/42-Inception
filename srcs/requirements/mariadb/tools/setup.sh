#!/bin/sh

mysql_install_db --user=mysql --datadir=/var/lib/mysql
# Avoid socket errors
mkdir -p /var/run/mysqld
chown -R mysql:mysql /var/run/mysqld
# Avoid groups owner errors
chown -R mysql:mysql /var/lib/mysql

echo "CREATE DATABASE $DB_NAME;" > init.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> init.sql
echo "FLUSH PRIVILEGES;" >> init.sql

mysqld --user=mysql --init-file=/init.sql