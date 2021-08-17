PORT := 3000
IMAGE_NAME := wello-service_1

clean: format lint test

install-dev:
	NODE_ENV=development npx yarn install

lint:
	npx yarn lint

tests:
	npx yarn test:cov

format:
	npx yarn format

launch-local:
	docker context use default
	docker-compose -p ${IMAGE_NAME} -f deployment/docker-compose.local.yaml up --build --force-recreate --remove-orphans -d

remove-local:
	docker context use default
	docker-compose -p ${IMAGE_NAME} -f deployment/docker-compose.yaml -f deployment/docker-compose.local.yaml down -v

local-logs:
	docker context use default
	docker-compose -p ${IMAGE_NAME} -f deployment/docker-compose.yaml -f deployment/docker-compose.local.yaml logs
