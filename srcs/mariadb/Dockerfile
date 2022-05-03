FROM debian:buster

RUN apt update -y && apt upgrade -y && \
	apt install -y \
	mariadb-server \
	mariadb-client

COPY mysql.tar.gz /
RUN tar -xvzf mysql.tar.gz -C /var/lib/ && rm -rf mysql.tar.gz
COPY ./my.cnf /etc/mysql/mariadb.conf.d/
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT  /docker-entrypoint.sh