help :
	@echo "help"

local-config:
	cp local.env .env

local-start:
	make local-config
	docker-compose -f local-docker-compose.yml up -d

local-start-build:
	make local-config
	docker-compose -f local-docker-compose.yml up -d --build

local-stop:
	make local-config
	docker-compose -f local-docker-compose.yml down