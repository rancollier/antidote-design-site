DC = docker-compose
DC_base = docker-compose.yml
DC_Dev = docker-compose.dev.yml
DC_Prod = docker-compose.prod.yml


reset:
	@echo "reset"
	docker-compose stop
	docker rm $(docker ps -a -q)
	docker rmi $(docker images -a -q)
	docker system prune -a
	docker ps

prod:
	@echo "production"
	./scripts/build-run-prod.sh

dev:
	@echo "production"
	./scripts/build-run-dev.sh

prune:
	@echo "prune"
	docker system prune -a

rmi:
	@echo "Remove Images"
	docker rmi $(docker images -a -q)

rmc:
	@echo "Remove Containers"
	docker rm $(docker ps -a -f status=exited -q)

dstop:
	@echo "stop Containers"
	docker stop $(docker ps -a -q )

test.build:
	@echo "test build"
	${DC} -f docker-compose.test.yml build

test.up:
	@echo "test up"
	${DC} -f docker-compose.test.yml up -d

test.bash:
	@echo "test up"
	${DC} exec -ti ngix bash

test.log:
	@echo "test up"
	${DC} docker-compose logs nginx  

prod.build:
	${DC} -f ${DC_base} -f ${DC_Prod} build

prod.up:
	${DC} -f ${DC_base} -f ${DC_Prod} up -d

prod.up.watch:
	${DC} -f ${DC_base} -f ${DC_Prod} up

dev.build:
	${DC} -f ${DC_base} -f ${DC_Dev} build

up:
	${DC} -f ${DC_base} -f ${DC_Dev} up -d

start:
	docker-compose start

stop:
	docker-compose stop

cli:
	docker-compose run --rm web bash
