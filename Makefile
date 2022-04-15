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
		rm -r ./data/mysql/* | true
		rm -r ./data/html/* | true
		
fclean:		clean clear
#			sudo yes | docker system prune

re:			fclean all