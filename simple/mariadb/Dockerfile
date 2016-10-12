FROM debian-dev

RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db && \
    add-apt-repository 'deb [arch=amd64,i386] http://ftp.igh.cnrs.fr/pub/mariadb/repo/10.1/debian jessie main' && \
    echo 'mariadb-server mysql-server/root_password password root' | debconf-set-selections  && \
    echo 'mariadb-server mysql-server/root_password_again password root' | debconf-set-selections  && \
    apt-get install -y mariadb-server

# Copy all configuration
RUN rm -r /etc/mysql/conf.d
ADD ./etc/mysql/conf.d/ /etc/mysql/conf.d


# Add run configuration directory
RUN mkdir init
ADD ./init/ /init

# Copy run.sh
COPY ./run.sh /run.sh
RUN chmod +x /run.sh


VOLUME [ "/etc/mysql/conf.d" ]
