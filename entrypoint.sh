#!/bin/bash

# Set resource limits (example: 0.5 CPU cores and 512 MB memory)
docker run --cpus=0.5 --memory=512m --read-only oj_evaluation_server

# Run Django's migration and then the development server
exec python manage.py migrate && python manage.py runserver 0.0.0.0:8000
