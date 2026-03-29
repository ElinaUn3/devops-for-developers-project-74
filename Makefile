.PHONY: setup test dev docker-build docker-test docker-dev

setup:
	docker-compose run --rm app make setup

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker-compose up

docker-build:
	docker-compose build

docker-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

docker-dev:
	docker-compose up