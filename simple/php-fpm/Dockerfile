FROM debian-dev

RUN apt-get update -y && \
	apt-get install -y \
		php5-fpm

RUN mkdir /var/www

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

VOLUME [ "/etc/php5" ]