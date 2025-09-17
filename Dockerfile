FROM php:7.4-fpm

# Cài thêm extension cần thiết
RUN docker-php-ext-install pdo pdo_mysql

# Copy source code vào container
WORKDIR /var/www/html
