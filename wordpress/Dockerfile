FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y \
	nginx\
	vim \
	curl \
	libnss3-tools \
	openssl \
	php-fpm

RUN useradd -ms /bin/bash wordpress
USER wordpress
WORKDIR /home/wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar
RUN ./wp-cli.phar core download


ENTRYPOINT tail -f /dev/null