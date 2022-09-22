start:
	docker-compose up -d

build:
	docker-compose build

stop:
	docker-compose stop

test:
	docker-compose run --rm app sh -c "python manage.py test"

lint:
	docker-compose run --rm app sh -c "flake8"

cmd:
	docker-compose run --rm app sh -c "$(c)"

pmd:
	docker-compose run --rm app sh -c "python manage.py $(c)"

activate:
	source .venv/bin/activate