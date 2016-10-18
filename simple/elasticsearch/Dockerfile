# TODO :
# - log / data configuration: https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-configuration.html
# elasticsearch user log4j configuration login. Setup the limit and rotation log
FROM debian-java8

# install url
RUN apt-get update -y && \
    apt-get install -y curl

# add elasticseatch user
RUN useradd -ms /bin/bash elasticsearch
USER elasticsearch
WORKDIR /home/elasticsearch

# install elasticsearch
# install with repo (another solution) https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-repositories.html
RUN curl -L -O https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.0/elasticsearch-2.4.0.tar.gz && \
    tar -xvf elasticsearch-2.4.0.tar.gz

COPY ./elasticsearch.yml /home/elasticsearch/elasticsearch-2.4.0/config/elasticsearch.yml 

USER root
# remove useless packages
RUN apt-get purge -y \
    curl && \
    rm elasticsearch-2.4.0.tar.gz 

# boot script
COPY ./run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 9200

WORKDIR /
ENTRYPOINT [ "/run.sh" ] 
