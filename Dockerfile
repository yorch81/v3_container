FROM php:7.3-apache
MAINTAINER YoRcH

RUN echo "<?php phpinfo(); ?>" > /var/www/html/info.php
COPY app /var/www/html/
RUN rm -frv /etc/apache2/sites-available/000-default.conf
COPY etc /etc/apache2/sites-available/
RUN apt-get update \
    && apt-get install -y --no-install-recommends openssl libssl-dev libcurl4-openssl-dev \
    && pecl install mongodb \
    && cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
    && echo "extension=mongodb.so" >> /usr/local/etc/php/php.ini \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN a2enmod rewrite
EXPOSE 80