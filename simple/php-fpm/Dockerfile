FROM debian-dev

RUN apt-get update -y && \
	apt-get install -y \
		php5-fpm \
		php5-mysql

COPY ./install-composer.sh /install-composer.sh
RUN chmod +x /install-composer.sh 
RUN /install-composer.sh

RUN mkdir /var/www

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

VOLUME [ "/etc/php5" ]