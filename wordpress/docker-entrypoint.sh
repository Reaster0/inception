#!/bin/bash
cp -rf /wordpress/* /var/www/html/
echo "running php-fpm ✅"
php-fpm7 --nodaemonize