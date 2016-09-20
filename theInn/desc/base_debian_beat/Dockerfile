FROM theinn_base_debian

ENTRYPOINT [ "/bin/bash -i" ]

RUN apt-get update -y && \
    curl -L -O https://download.elastic.co/beats/filebeat/filebeat_1.3.0_amd64.deb && \
    dpkg -i filebeat_1.3.0_amd64.deb && \
    # clean
    rm filebeat_1.3.0_amd64.deb && \
    # start auto 
    # TODO: auto start with systemd
    update-rc.d filebeat defaults

RUN cp /etc/filebeat/filebeat.template.json /etc/filebeat/filebeat.template.json_back && \
    cp /etc/filebeat/filebeat.yml /etc/filebeat/filebeat.yml_back 

COPY ./filebeat.yml /etc/filebeat/filebeat.yml
