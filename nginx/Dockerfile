FROM debian:buster

RUN apt update && apt upgrade -y && apt install -y \
	nginx\
	vim \
	wget \
	libnss3-tools

RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-arm64 -0 mkcert && \
	chmod 755 mkcert && ./mkcert -install && ./mkcert -cert-file /etc/ssl/certs/localhost.pem -key-file /etc/ssl/certs/localhost-key.pem localhost
ENTRYPOINT nginx -g 'daemon off;'