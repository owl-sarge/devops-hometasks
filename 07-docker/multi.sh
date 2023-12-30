#!/bin/sh
docker build -t wcg:multi -f Dockerfile.multi .
docker run -d -ti -p 8888:8888 wcg:multi
