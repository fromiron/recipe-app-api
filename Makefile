start:
	docker-compose up -d

build:
	docker-compose build

runserver:
	docker-compose run --rm app sh -c "python manage.py runserver"

stop:
	docker-compose stop

test:
	docker-compose run --rm app sh -c "flake8"