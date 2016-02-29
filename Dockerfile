FROM ubuntu:14.04

ENV PHP_VERSION=7.0

RUN apt-get install -y language-pack-en-base software-properties-common \
 && LC_ALL=en_GB.UTF-8 add-apt-repository ppa:ondrej/php -y \
 && apt-get update \
 && apt-get install -y -q \
    ca-certificates \
    git \
    zip \
    curl \
    php-cli \
    php7.0 \
    php7.0-fpm \
    php7.0-common \
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