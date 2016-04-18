FROM php:5.6-apache
MAINTAINER stickmansgallows

RUN apt-get update \
    && apt-get install -y git gettext exif libcurl4-gnutls-dev libpng12-dev libgmp-dev libicu-dev \ 
    && ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h \
    && pecl install intl \
    && docker-php-ext-install -j$(nproc) curl gd gmp intl json mysql mysqli \
    && apt-get clean

RUN git clone https://git.gnu.io/gnu/gnu-social.git /var/www/html \
    && mkdir -p /var/www/html/avatar \
    && mkdir -p /var/www/html/file \
    && chown -R www-data:www-data /var/www/html \
    && chmod g+w /var/www/html/avatar \
    && chmod g+w /var/www/html/file 
    
RUN mv /var/www/html/htaccess.sample /var/www/html/.htaccess \
    && ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load
COPY config/php.ini /usr/local/etc/php/
RUN mkdir -p /etc/gnusocial
COPY config/config.php /etc/gnusocial/
RUN ln -s /etc/gnusocial/config.php /var/www/html/config.php

EXPOSE 80

VOLUME ["/var/www/html/file","/var/www/html/avatar","/etc/gnusocial"]

CMD ["apache2-foreground"]
