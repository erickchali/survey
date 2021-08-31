PORT := 3000
IMAGE_NAME := wello-service_1

clean: format lint tests

install-dev:
	NODE_ENV=development yarn install

pipeline: lint tests check-vulnerabilities

lint:
	yarn lint

tests:
	yarn test:cov

format:
	yarn format

check-vulnerabilities:
	yarn audit --level high

launch-local:
	docker context use default
	docker-compose -p ${IMAGE_NAME} -f deployment/docker-compose.local.yaml up --build --force-recreate --remove-orphans -d

remove-local:
	docker context use default
	docker-compose -p ${IMAGE_NAME} -f deployment/docker-compose.yaml -f deployment/docker-compose.local.yaml down -v

local-logs:
	docker context use default
	docker-compose -p ${IMAGE_NAME} -f deployment/docker-compose.yaml -f deployment/docker-compose.local.yaml logs
