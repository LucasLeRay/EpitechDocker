FROM debian:latest AS epi-container-cpp

MAINTAINER Lucas LE RAY

WORKDIR /workspace

COPY ./build_sources/bin/* /usr/bin/

COPY ./build_sources/id_rsa.pub /root/.ssh/id_rsa.pub
COPY ./build_sources/id_rsa /root/.ssh/id_rsa

RUN chmod 777 /usr/bin/*

RUN echo "deb http://debian.proxad.net/debian/ wheezy main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb http://security.debian.org/ wheezy/updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb http://debian.proxad.net/debian/ wheezy-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb http://www.deb-multimedia.org wheezy main non-free" >> /etc/apt/sources.list && \
    echo "deb-src http://ftp.debian.org/debian wheezy main" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y build-essential python3 emacs valgrind ocaml libncurses5 curl git

CMD  exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"