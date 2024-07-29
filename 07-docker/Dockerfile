FROM debian:stable-slim
RUN apt-get update && apt-get install -y apache2 php
COPY index.php /var/www/html/index.php
RUN rm /var/www/html/index.html
EXPOSE 80
CMD ["apache2ctl","-D", "FOREGROUND"]