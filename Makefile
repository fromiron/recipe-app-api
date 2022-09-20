start:
	docker-compose up -d

build:
	docker-compose build

stop:
	docker-compose stop

test:
	docker-compose run --rm app sh -c "flake8"

cmd:
	docker-compose run --rm app sh -c "$(c)"