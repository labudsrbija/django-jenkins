#!/bin/bash

source env/bin/activate

cd /var/lib/jenkins/workspace/django-cicd/app

python3 manage.py makemigrations
python3 manage.py migrate

echo "migrations are done"

cd /var/lib/jenkins/workspace/django-cicd

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "gunicorn is set"

sudo systemctl status gunicorn
sudo systemctl restart gunicorn
