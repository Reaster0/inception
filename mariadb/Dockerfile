FROM debian:buster

RUN apt update -y && apt upgrade -y && \
	apt install -y \
	mariadb-server \
	mariadb-client

COPY docker-entrypoint.sh /
COPY ./my.cnf /etc/my.cnf
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT  /docker-entrypoint.sh