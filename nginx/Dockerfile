FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y \
	nginx\
	vim \
	wget \
	libnss3-tools \
	openssl

#RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-arm64 -O mkcert
#RUN	chmod 755 ./mkcert && ./mkcert -install && ./mkcert -cert-file /etc/ssl/certs/localhost.pem -key-file /etc/ssl/certs/localhost-key.pem localhost 127.0.0.1
RUN		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=France/L=Paris/O=42/CN=127.0.0.1" -keyout /etc/ssl/private/ssl-cert-snakeoil.key -out /etc/ssl/certs/ssl-cert-snakeoil.pem
#RUN		openssl dhparam -out /etc/ssl/certs/dhparam.pem 1000


EXPOSE 443
EXPOSE 80

ENTRYPOINT nginx -g 'daemon off;'