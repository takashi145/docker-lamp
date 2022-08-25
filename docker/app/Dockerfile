FROM php:8.0-apache

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_HOME /composer

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN apt-get update \
    && apt-get install -y git unzip libzip-dev libicu-dev libonig-dev \
    && docker-php-ext-install pdo_mysql mbstring zip bcmath

COPY ./php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html
