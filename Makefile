start:
	docker-compose up

build:
	docker-compose build

stop:
	docker-compose stop

test:
	docker-compose run --rm dev-app sh -c "python manage.py wait_for_db && python manage.py test && python manage.py flake8"

lint:
	docker-compose run --rm dev-app sh -c "flake8"

cmd:
	docker-compose run --rm dev-app sh -c "$(c)"

pmd:
	docker-compose run --rm dev-app sh -c "python manage.py $(c)"

migration:
	docker-compose run --rm dev-app sh -c "python manage.py makemigrations && python manage.py migrate"