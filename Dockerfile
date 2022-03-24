FROM debian:buster

RUN apt-get update && apt-get install -y \
	vim \
	neofetch

CMD "neofetch"