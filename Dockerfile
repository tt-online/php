FROM ubuntu:16.04

ENV PHP_VERSION=7.0 \
    && OS=UBUNTU_16.04

RUN apt-get update \
 && apt-get install -y -q \
    ca-certificates \
    git \
    zip \
    curl \
    php-cli \
    php \
    php-fpm \
    php-common \
    php-json \
    php-xml \
    php-mbstring \
    php-intl \
    php-mysql \
    php-mcrypt \
    php-apcu \
    php-soap \
    php-redis \
    php-curl \
    php-xdebug \
 && apt-get clean \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
 && mkdir -p /run/php