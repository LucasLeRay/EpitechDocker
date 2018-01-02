NAME=epitech_container
COMMAND=zsh

build:
	cp ~/.ssh/id_rsa build_sources/id_rsa
	cp ~/.ssh/id_rsa.pub build_sources/id_rsa.pub
	docker build -t $(NAME) .

run:
	docker run -v ${CURDIR}/../:/workspace -it --rm $(NAME) $(COMMAND)

launch: build run