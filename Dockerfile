FROM epitechcontent/epitest-docker:latest AS epitech-docker

MAINTAINER Lucas LE RAY

WORKDIR /workspace

COPY ./build_sources/bin/* /usr/bin/

COPY ./build_sources/id_rsa.pub /root/.ssh/id_rsa.pub
COPY ./build_sources/id_rsa /root/.ssh/id_rsa

RUN yum update -y
RUN yum install -y bzip2 SFML emacs
RUN wget --no-check-certificate http://install.ohmyz.sh -O - | sh

ENV LOGIN lucas.le-ray@epitech.eu

RUN git config --global user.email $LOGIN
RUN git config --global user.name $LOGIN

RUN /usr/bin/install_criterion.sh
RUN sudo ln -s /lib64/libsfml-network.so.2.4 /lib64/libsfml-network.so
RUN sudo ln -s /lib64/libsfml-audio.so.2.4 /lib64/libsfml-audio.so
RUN sudo ln -s /lib64/libsfml-graphics.so.2.4 /lib64/libsfml-graphics.so
RUN sudo ln -s /lib64/libsfml-system.so.2.4 /lib64/libsfml-system.so
RUN sudo ln -s /lib64/libsfml-window.so.2.4 /lib64/libsfml-window.so