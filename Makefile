COMPOSE_FILE = ./srcs/docker-compose.yml

up:
	docker-compose -f $(COMPOSE_FILE) up

down:
	docker-compose -f $(COMPOSE_FILE) down

clean:
	docker rm -f $$(docker ps -a -q)
	docker rmi -f $$(docker images -a -q)

.PHONY:	up down clean
