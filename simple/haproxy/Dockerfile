FROM debian-dev

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main contrib non-free" > /etc/apt/sources.list.d/backports.list && \
	apt-get update && \
	apt-get install -y -t jessie-backports haproxy

# Copy configuration
COPY ./run.sh /run.sh
RUN chmod +x /run.sh

VOLUME [ "/etc/haproxy", "/etc/rsyslog.d", "/etc/logrotate.d" ]