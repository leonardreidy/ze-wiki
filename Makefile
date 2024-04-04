clean :
	rm -rf node_modules

configure :
	cp .env.example > .env

install :
	yarn install -y

build :
	docker compose --file docker-compose.services.yaml up --detach

postbuild:
	open http://localhost:8080

uuid=$(shell docker ps -aqf "name=^mediawiki_service_container")
copy :
	docker container cp $(uuid):/var/www/html/LocalSettings.php ./LocalSettings.php

start :
	docker compose --file docker-compose.services.yaml up --detach 

stop :
	docker compose --file docker-compose.services.yaml stop

.PHONY : all
all : clean install build postbuild start
	@echo -------------------------------------------------------------------------------
	@echo Your Wiki is up and running!
	@echo -------------------------------------------------------------------------------