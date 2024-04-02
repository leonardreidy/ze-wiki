clean :
	rm -rf node_modules

install :
	npm install

build :
	docker compose --file .docker/docker-compose.services.yaml up --detach

uuid=$(shell docker ps -aqf "name=^mediawiki_service_container")
configure :
	docker container cp $(uuid):/var/www/html/LocalSettings.php ./LocalSettings.php

start :
	docker compose --file .docker/docker-compose.services.yaml up --detach 

stop :
	docker compose --file .docker/docker-compose.services.yaml stop


.PHONY : all
all : clean install build start
	@echo -------------------------------------------------------------------------------
	@echo Your Wiki is up and running!
	@echo -------------------------------------------------------------------------------