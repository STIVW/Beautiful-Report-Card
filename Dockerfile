FROM php:7.4-apache

# 安装MYSQL客户端和PHP扩展
RUN apt-get update && \
    apt-get install -y \
    libicu-dev \
    unzip \
    && docker-php-ext-install intl mysqli pdo pdo_mysql
#复制项目到php服务器
COPY . /var/www/html/


EXPOSE 80

CMD ["apache2-foreground"]
