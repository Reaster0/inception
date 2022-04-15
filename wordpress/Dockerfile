FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y \
	nginx\
	vim \
	curl \
	libnss3-tools \
	openssl \
	php-fpm \
	mariadb-server

#RUN useradd -ms /bin/bash wordpress
#USER wordpress
#WORKDIR /home/wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar
RUN ./wp-cli.phar core download --allow-root

# RUN ./wp-cli.phar config create \
#   --dbhost=$WORDPRESS_DB_HOST \
#   --dbname=$WORDPRESS_DB_NAME \
#   --dbuser=$WORDPRESS_DB_USER \
#   --dbpass=$WORDPRESS_DB_PASSWORD \
#   --allow-root

# RUN	./wp-cli.phar core install \
#   --title=$TITLE \
#   --url=$URL \
#   --admin_user=$ADMIN_USER \
#   --admin_password=$ADMIN_PASSWORD \
#   --admin_email=$ADMIN_EMAIL \
#   --allow-root

# RUN chown -R www-data:www-data wp-content \
# 	&& chmod -R g+w wp-content


ENTRYPOINT tail -f /dev/null