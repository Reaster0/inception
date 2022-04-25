SRCS		:= nginx/Dockerfile \
				docker-compose.yml

all:		up

up:		$(SRCS)
			mkdir /home/user42/data/mysql | true
			mkdir /home/user42/data/html | true
			sudo docker-compose up --build

down:	$(SRCS)
			sudo docker-compose down

clear:
		sudo rm -rf /home/user42/data/mysql/* | true
		sudo rm -rf /home/user42/data/html/* | true
		
fclean:		clear down

re:			fclean all
