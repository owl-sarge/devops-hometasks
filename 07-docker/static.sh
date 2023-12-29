#!/bin/sh
docker run -d -ti -p 8081:80 --name static-site hometask-image
docker cp ./index.html static-site:/var/www/html/
