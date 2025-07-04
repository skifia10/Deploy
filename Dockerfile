FROM php:8.2-apache

RUN docker-php-ext-install pdo pdo_pgsql pgsql

RUN curl -L https://www.hoteldruid.com/download/hoteldruid-latest.tar.gz | tar xz -C /var/www/html/ --strip-components=1

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
