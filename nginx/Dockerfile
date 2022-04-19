FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install -y \
	nginx\
	wget \
	openssl
	#libnss3-tools \

RUN mkdir -p /etc/ssl/private
RUN	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=France/L=Paris/O=42/CN=127.0.0.1" -keyout /earnaud.42.fr.key -out /earnaud.42.fr.crt
#RUN		openssl dhparam -out /etc/ssl/certs/dhparam.pem 1000
RUN rm -f /etc/nginx/sites-available/default
RUN rm -f /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-available/nginx.conf
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf
ENTRYPOINT nginx -g 'daemon off;'