clean :
	rm -rf node_modules

configure :
	cp .env.example > .env

install :
	yarn install -y

build :
	docker compose --file docker-compose.services.yaml up --detach

postbuild:
	sleep 5
	open http://localhost:3097

# uuid=$(shell docker ps -aqf "name=^wikjs_application_container")
# copy :
# 	docker container cp $(uuid):/path/to/file/somefile.js ./somefile.js

start :
	docker compose --file docker-compose.services.yaml up --detach 

stop :
	docker compose --file docker-compose.services.yaml stop

.PHONY : all
all : clean install build postbuild start
	@echo -------------------------------------------------------------------------------
	@echo Your Wiki is up and running!
	@echo -------------------------------------------------------------------------------