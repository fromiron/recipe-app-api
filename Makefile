start:
	docker-compose up

build:
	docker-compose build

stop:
	docker-compose stop

test:
	docker-compose run --rm dev-app sh -c "python manage.py test"

lint:
	docker-compose run --rm dev-app sh -c "flake8"

cmd:
	docker-compose run --rm dev-app sh -c "$(c)"

pmd:
	docker-compose run --rm dev-app sh -c "python manage.py $(c)"

flake:
	docker-compose run --rm dev-app sh -c "flake8"