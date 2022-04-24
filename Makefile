SRCS		:= nginx/Dockerfile \
				docker-compose.yml

NAME		:= inception

all:		up

debug:	$(SRCS)
			sudo docker-compose up --build

up:		$(SRCS)
			sudo docker-compose up --build

down:	$(SRCS)
			sudo docker-compose down

clean:	down
#		sudo docker image rm inception_nginx && docker image rm inception_wordpress

clear:
		sudo rm -rf /home/user42/data/mysql/* | true
		sudo rm -rf /home/user42/data/html/* | true
		
fclean:		clean clear
#			sudo yes | docker system prune

re:			fclean all
