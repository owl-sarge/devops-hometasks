#!/bin/sh
docker build -t hometask-image .
docker run -d -ti -p 8080:80 --name dynamic-site hometask-image