#!/bin/bash

python manage.py migrate
python manage.py collectstatic --no-input
/usr/local/bin/gunicorn macdash.wsgi:application -w 2 -b :8000
