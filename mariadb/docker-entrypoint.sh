#bin/sh

# sed -i -e "s/\${MYSQL_USER}/${MYSQL_USER}/g" /etc/my.cnf;
# sed -i -e "s/\${MYSQL_PASSWORD}/${MYSQL_PASSWORD}/g" /etc/my.cnf;
service mysql start
mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'';"
mysql -e "CREATE DATABASE IF NOT EXISTS '$MYSQL_DATABASE'' ;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES;"
service mysql stop
mysqld
echo "is not okay?"