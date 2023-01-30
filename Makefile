all: dev
dev:
	ENVIRONMENT=dev docker-compose up;
run:
	ENVIRONMENT=prod docker-compose up;
build:
	docker-compose build;

