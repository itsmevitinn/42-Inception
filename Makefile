COMPOSE_FILE = ./srcs/docker-compose.yml

up:
	sudo docker compose -f $(COMPOSE_FILE) up

.PHONY:	up
