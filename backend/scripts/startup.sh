#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT demoapp2312_50482.wsgi:application
