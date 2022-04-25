FROM alpine

RUN apk update && apk upgrade && \
	apk add \
	php7 \
	php7-fpm \
	php7-mysqli \
	php7-json

RUN wget https://wordpress.org/latest.tar.gz -P /
RUN tar -xf latest.tar.gz && rm -rf latest.tar.gz
COPY wp-config.php /wordpress/
COPY www.conf /etc/php7/php-fpm.d/
COPY docker-entrypoint.sh /
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT sh docker-entrypoint.sh