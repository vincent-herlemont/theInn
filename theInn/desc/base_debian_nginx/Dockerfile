FROM theinn_base_debian_beat

RUN apt-get update -y && \
    # onther way to automatise command
    echo "Y" | apt-get install nginx

COPY ./filebeat.yml /etc/filebeat/filebeat.yml

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT [ "/run.sh" ]
