FROM php:8.0-apache

WORKDIR /var/www/html

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN apt-get update \
  && apt-get -y install --no-install-recommends git unzip libzip-dev libicu-dev libonig-dev \
  && docker-php-ext-install pdo_mysql mbstring zip bcmath

COPY ./php.ini /usr/local/etc/php/php.ini
