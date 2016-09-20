FROM debian:jessie

ENV USER_NAME "user"
ENV USER_ID -9001

RUN apt-get update -y && \
    apt-get install -y \
    vim \
    systemd \
    systemd-sysv \
    sudo \
    ssh \
    curl wget

# add emoji (https://github.com/mrowa44/emojify)
RUN curl https://raw.githubusercontent.com/mrowa44/emojify/master/emojify -o /usr/local/bin/emojify && \
         chmod +x /usr/local/bin/emojify

# add golbal conf to shell
COPY ./bash.bashrc.plus /etc/bash.bashrc.plus
RUN echo ". /etc/bash.bashrc.plus" >> /etc/bash.bashrc && \
    chmod 644 /etc/bash.bashrc.plus

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY ./run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT [ "./entrypoint.sh" ]
