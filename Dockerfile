FROM php:7.0-cli

# install php extensions
RUN apt-get update && apt-get install -y libicu-dev libmcrypt-dev
RUN docker-php-ext-install intl mcrypt mbstring opcache

# configure php.ini
# RUN echo << EOS > /usr/local/etc/php/php.ini
# date.timezone = "Asia/Tokyo"
# xdebug.max_nesting_level = 500
# memory_limit = 2048M
# mbstring.language = "Japanese"
# mbstring.internal_encoding = "UTF-8"
# EOS
# なぜか出力できない…

# configure php.ini
RUN echo 'date.timezone = "Asia/Tokyo"'         > /usr/local/etc/php/php.ini
RUN echo 'xdebug.max_nesting_level = 500'       >> /usr/local/etc/php/php.ini
RUN echo 'memory_limit = 2048M'                 >> /usr/local/etc/php/php.ini
RUN echo 'mbstring.language = "Japanese"'       >> /usr/local/etc/php/php.ini
RUN echo 'mbstring.internal_encoding = "UTF-8"' >> /usr/local/etc/php/php.ini
