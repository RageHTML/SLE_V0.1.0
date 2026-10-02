#!/bin/sh
echo "Esperando o MySQL..."
until nc -z mysql 3306; do
  echo "ainda esperando..."
  sleep 2
done
echo "MySQL está ativo!"

python manage.py migrate
python manage.py runserver 0.0.0.0:8000