FROM debian-dev

# Install Nginx
RUN apt-get update -y && \
    apt-get install -y nginx

# Copy configuration
COPY ./run.sh /run.sh
RUN chmod +x /run.sh

VOLUME [ "/var/log/nginx", "/etc/nginx" ]