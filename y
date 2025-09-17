FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    git zip unzip libpng-dev libonig-dev libjpeg-dev libzip-dev \
 && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
COPY . /var/www/html

EXPOSE 9000
CMD ["php-fpm"]


