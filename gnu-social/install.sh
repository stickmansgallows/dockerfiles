#!/bin/bash

cp -rn /social/* /var/www/html/
mkdir -p /var/www/html/avatar
mkdir -p /var/www/html/file
chown -R www-data:www-data /var/www/html
chmod g+w /var/www/html/avatar
chmod g+w /var/www/html/file

mv /var/www/html/htaccess.sample /var/www/html/.htaccess
