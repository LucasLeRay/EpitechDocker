LOGIN=firstname.lastname@epitech.eu
NAME=epitech_container
COMMAND=bash

build:
	chmod 777 ./build_sources/bin/*
	cp ~/.ssh/id_rsa build_sources/id_rsa
	cp ~/.ssh/id_rsa.pub build_sources/id_rsa.pub
	docker build -t $(NAME) .

run:
	docker run -v ${CURDIR}/../:/workspace --env LOGIN=$(LOGIN) -it --rm $(NAME) $(COMMAND)

launch: build run