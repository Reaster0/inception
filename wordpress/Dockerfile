FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y \
	vim \
	curl \
	php \
	php7.3-fpm \
	php-mbstring \
	php-mysql

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY ./launch.sh /
RUN chmod +x ./launch.sh
COPY ./wp-config.php /

ENTRYPOINT  /launch.sh