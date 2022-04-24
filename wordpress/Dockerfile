#FROM debian:buster

#RUN apt update -y && apt upgrade -y && apt install -y php php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

FROM alpine

RUN apk update && apk upgrade && \
	apk add    php php-fpm \
                            php-mysqli \
                            php-common \
                            php-cli \
                            php-phar
RUN     apk add   php-curl php-gd php-intl \
                            php-mbstring php-soap php-xml \
                            php-xmlrpc php-zip php-json \
                            php-openssl
#RUN wget https://wordpress.org/latest.tar.gz -P /
RUN mkdir /wordpress
#COPY latest.tar.gz /wordpress/
ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /
RUN chmod +x /wp-cli.phar && mv /wp-cli.phar /usr/local/bin/wp
RUN wp core download --path=/wordpress --allow-root
COPY wp-config.php /wordpress/

# #RUN cd wordpress && tar -xf latest.tar.gz && rm -rf latest.tar.gz
# #COPY wp-config.php /wordpress/
COPY www.conf /etc/php7/php-fpm.d/
# RUN mkdir /run/php
COPY docker-entrypoint.sh /
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT sh docker-entrypoint.sh