#!/bin/bash

sleep 5
cp -rf /wordpress/* /var/www/html/
echo "running php-fpm ✅"
php-fpm7 --nodaemonize