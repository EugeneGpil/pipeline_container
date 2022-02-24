FROM ubuntu:20.04

USER root
RUN groupadd -g 1000 app &&\
    useradd -u 1000 -m app -g app &&\
    \
    apt-get update -y &&\
    apt-get upgrade -y &&\
    \
    apt-get install software-properties-common -y &&\
    add-apt-repository ppa:ondrej/php -y &&\
    \
    apt-get update -y &&\
    apt-get upgrade -y &&\
    \
    apt-get install\
        php8.1\
        php8.1-fpm\
        php8.1-cli\
        php8.1-common\
        php8.1-opcache\
        php8.1-mysql\
        php8.1-mbstring\
        php8.1-zip\
        php8.1-gd\
        php8.1-xml\
        php8.1-dev\
        php8.1-intl\
        php8.1-curl\
        -y &&\
    \
    apt-get install\
        zip\
        unzip\
        nano\
        -y &&\
    curl -sS https://getcomposer.org/installer\
        | php -- --install-dir=/usr/local/bin --filename=composer

RUN echo "listen = 9000" >> /etc/php/8.1/fpm/pool.d/www.conf
