FROM debian:stable-slim
RUN apt-get update && apt-get install --no-install-recommends -y apache2=2.4.61-1~deb12u1 php=2:8.2+93 \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
COPY index.php /var/www/html/index.php
RUN rm /var/www/html/index.html
EXPOSE 80
CMD ["apache2ctl","-D", "FOREGROUND"]