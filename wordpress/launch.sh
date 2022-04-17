#!/bin/bash
echo "this is the start of the script"
cd /var/www/html
if (ls -l /var/www/html/wp-config.php | grep -q 'wp-config.php')
then
	echo "wp-config.php found"
else
	echo "wp-config.php not found"
	mv /wp-config.php .
	echo "just before wp core download"
	wp core download --allow-root

	#sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php/7.3/fpm/pool.d/www.conf
	#echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

	# sed -i "s|R_DB_NAME|'$DB_NAME'|g" /var/www/wp_site/wp-config.php
	# sed -i "s|R_DB_USER|'$DB_USER'|g" /var/www/wp_site/wp-config.php
	# sed -i "s|R_DB_PASSWORD|'$DB_PASSWORD'|g" /var/www/wp_site/wp-config.php
	# sed -i "s|R_DB_HOST|'$DB_HOST'|g" /var/www/wp_site/wp-config.php

	#mv /wp-config.php /var/www/html/wp-config.php
	echo "just before wp core install"
	wp core install --title=$TITLE --url=$URL --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
	#wp user create --allow-root $WORDPRESS_USER --user_pass=$WORDPRESS_PASSWORD

fi
echo "running php-fpm"
mkdir /run/php
php-fpm7.3 --nodaemonize
# echo "php failed running tail-f"
# tail -f /dev/null
echo "this is the end of the script"
