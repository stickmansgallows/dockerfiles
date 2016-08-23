FROM php:5.6-apache
MAINTAINER stickmansgallows

RUN apt-get update \
    && apt-get install -y git gettext exif libcurl4-gnutls-dev libpng12-dev libgmp-dev libicu-dev mysql-client \ 
    && ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h \
    && pecl install intl \
    && docker-php-ext-install -j$(nproc) curl gd gmp intl json mysql mysqli \
    && apt-get clean
    
RUN mkdir -p /var/www/html \
    && git clone https://git.gnu.io/gnu/gnu-social.git /var/www/html
    
RUN ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load
COPY *.sh /

EXPOSE 80

VOLUME ["/var/www/html"]

CMD ["/run.sh"]
