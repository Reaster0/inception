#!/bin/bash

sleep 5
# wp core install --allow-root --path=/wordpress \
# 			--url=${URL} \
# 			--title=${TITLE} \
# 			--admin_user=${WORDPRESS_DB_USER} \
# 			--admin_password=${WORDPRESS_DB_PASSWORD} \
# 			--admin_email=${ADMIN_EMAIL}\
# 			--locale=fr_FR
#wp core install --allow-root --path=/wordpress --url="earnaud.42.fr" --title="My website" --admin_user="earnaud" --admin_password="1234" --admin_email="earnaud@student.42.fr" --skip-email
#cd wordpress && wp user create --allow-root user2 earnaud@42.fr --user_pass=user2
cp -rf /wordpress/* /var/www/html/
echo "running php-fpm ✅"
php-fpm7 --nodaemonize
#service php7.3-fpm start