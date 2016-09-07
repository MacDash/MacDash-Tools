
clone: 
	git clone https://github.com/MacDash/MacDash.git MacDash

build:
	docker-compose -f dev.yml build --no-cache

up:
	docker-compose -f dev.yml up

createsuperuser:
	docker-compose -f dev.yml run macdash python manage.py createsuperuser

djangoshell:
	docker-compose -f dev.yml run macdash python manage.py shell

make jsssync:
	docker-compose -f dev.yml run macdash python manage.py jsssync
