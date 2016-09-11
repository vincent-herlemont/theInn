FROM theinn_base_debian_java8

# Util
RUN apt-get update -y && \
    apt-get install -y wget

# Package installation logstash
RUN wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add - && \
    echo "deb https://packages.elastic.co/logstash/2.4/debian stable main" | tee -a /etc/apt/sources.list && \
    apt-get install -y --force-yes apt-transport-https && \
    apt-get update -y && \
    apt-get install -y logstash

# Remove useless package
RUN apt-get purge -y \
    wget

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

VOLUME [ "/etc/logstash/conf.d" ]

ENTRYPOINT [ "/run.sh" ] 
