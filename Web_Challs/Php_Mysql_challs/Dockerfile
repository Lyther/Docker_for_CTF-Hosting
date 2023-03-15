# Pull base image 
FROM ubuntu:trusty

WORKDIR /app

RUN apt-get update \
	&& apt-get install -y mysql-server apache2 php5 php5-mysql

COPY databases/database.sql ./
COPY files/ /var/www/html/

ADD start.sh .
RUN mkdir /init-scripts/ \
    && mv ./start.sh /init-scripts/ \
    && chmod +x /init-scripts/start.sh

ENTRYPOINT ["/init-scripts/start.sh"]