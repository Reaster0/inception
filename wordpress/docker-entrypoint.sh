#!/bin/bash
cp -rf /wordpress/* /var/www/html/
sleep 3
echo "running php-fpm ✅"
php-fpm7 --nodaemonize