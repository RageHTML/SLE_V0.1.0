#!/bin/sh
echo "Esperando o mysql"
until nc -z db 3306; do
  echo "ainda esperando..."
  sleep 2
done
echo "Mysql esta ativo!"

python manage.py migrate
python manage.py runserver 0.0.0.0:8000