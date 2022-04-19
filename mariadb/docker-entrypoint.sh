#bin/sh

service mysql start
#tail -f /dev/null
echo "setup mysql ❇️"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
#mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_ADMIN'@'%' IDENTIFIED BY '$MYSQL_ADMIN_PASSWORD';"
mysql -u root -e "USE $MYSQL_DATABASE; GRANT ALL PRIVILEGES ON * TO '$MYSQL_USER'@'%' WITH GRANT OPTION;"
#mysql -u root -e "USE $MYSQL_DATABASE; GRANT ALL PRIVILEGES ON * TO '$MYSQL_ADMIN'@'%' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
service mysql stop
echo "starting mysql ✅"
mysqld_safe
echo "is not okay?"