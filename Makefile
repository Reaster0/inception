SRCS		:= nginx/Dockerfile \
				docker-compose.yml

NAME		:= inception

all:		up

debug:	$(SRCS)
			sudo docker-compose up

up:		$(SRCS)
			sudo docker-compose up -d

down:	$(SRCS)
			sudo docker-compose down

clean:	down
		
fclean:		clean
			sudo docker image rm inception_nginx
			sudo docker image rm wordpress

re:			fclean all