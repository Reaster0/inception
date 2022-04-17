FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y \
	vim \
	curl \
	php \
	wget \
	php7.3-fpm \
	php-mbstring \
	php-mysql

RUN wget https://wordpress.org/latest.tar.gz -P /
RUN tar -xf latest.tar.gz && rm -rf latest.tar.gz
COPY wp-config.php /wordpress/
RUN mkdir /run/php
ENTRYPOINT cp -rf /wordpress/* /var/www/html/ && php-fpm7.3 --nodaemonize

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
# 	&& chmod +x wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp
# COPY ./launch.sh /
# RUN chmod +x ./launch.sh
# COPY ./wp-config.php /

# ENTRYPOINT  /launch.sh