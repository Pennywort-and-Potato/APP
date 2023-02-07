all: dev
dev:
	ENVIRONMENT=dev docker-compose up;
run: build
	ENVIRONMENT=prod docker-compose up;
build:
	docker-compose down
	docker-compose rm -f api client
	docker-compose build;
clean_build:
	docker-compose down
	docker-compose rm -f api client
	docker-compose build --no-cache;
	ENVIRONMENT=dev docker-compose up;
	docker-compose down
rebuild_client:
	docker-compose down
	docker-compose build client;
rebuild_api:
	docker-compose down
	docker-compose build api;

