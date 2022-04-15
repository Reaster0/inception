#!/bin/bash

cd /var/www/html
mv /wp-config.php .
wp core download --allow-root

sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php/7.3/fpm/pool.d/www.conf
#echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

# sed -i "s|R_DB_NAME|'$DB_NAME'|g" /var/www/wp_site/wp-config.php
# sed -i "s|R_DB_USER|'$DB_USER'|g" /var/www/wp_site/wp-config.php
# sed -i "s|R_DB_PASSWORD|'$DB_PASSWORD'|g" /var/www/wp_site/wp-config.php
# sed -i "s|R_DB_HOST|'$DB_HOST'|g" /var/www/wp_site/wp-config.php

#mv /wp-config.php /var/www/html/wp-config.php

wp core install --title=$TITLE --url=$URL --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
#wp user create --allow-root $WORDPRESS_USER --user_pass=$WORDPRESS_PASSWORD

sh /etc/init.d/php7.3-fpm start

#/usr/sbin/$(ls /usr/sbin | grep php | grep fpm) --nodaemonize
