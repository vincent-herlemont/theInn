FROM theinn_base_debian

# Pacakge installation JDK 8
RUN apt-get update -y && \
    wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz && \
    mkdir /opt/jdk && \
    tar -zxf jdk-8u101-linux-x64.tar.gz -C /opt/jdk && \
    update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_101/bin/java 100 && \
    update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_101/bin/javac 100 && \
    rm jdk-8u101-linux-x64.tar.gz
