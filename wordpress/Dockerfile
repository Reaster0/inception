#FROM debian:buster

#RUN apt update -y && apt upgrade -y && apt install -y php php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

FROM alpine

RUN apk update && apk upgrade && \
	apk add \
	php7 \
	php7-fpm \
	php7-mysqli \
	php7-json

RUN wget https://wordpress.org/latest.tar.gz -P /
#RUN mkdir /wordpress
#COPY latest.tar.gz /wordpress/
RUN tar -xf latest.tar.gz && rm -rf latest.tar.gz
COPY wp-config.php /wordpress/
COPY www.conf /etc/php7/php-fpm.d/
# RUN mkdir /run/php
COPY docker-entrypoint.sh /
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT sh docker-entrypoint.sh