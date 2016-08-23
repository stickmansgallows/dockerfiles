#!/bin/bash

touch /data/config.php
mkdir -p /var/www/html/avatar
mkdir -p /var/www/html/file
ln -s /data/avatar /var/www/html/avatar
ln -s /data/file /var/www/html/file
ln -s /data/config.php /var/www/html/config.php
chown -R www-data:www-data /var/www/html
chmod g+w /var/www/html/avatar
chmod g+w /var/www/html/file

mv /var/www/html/htaccess.sample /var/www/html/.htaccess
