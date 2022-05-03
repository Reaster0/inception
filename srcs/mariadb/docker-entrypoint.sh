#bin/sh
#service mysql start
sleep 3
# echo "setup mysql ❇️"
# mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;"
# mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
# mysql -u root -e "USE $MYSQL_DATABASE; GRANT ALL PRIVILEGES ON * TO '$MYSQL_USER'@'%' WITH GRANT OPTION;"
# #mysql -u root -e "SET PASSWORD 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');"
# mysql -u root -e "FLUSH PRIVILEGES;"
# service mysql stop
echo "starting mysql ✅"
mysqld_safe
echo "mariadb is not okay?"