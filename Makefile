NAME=elct9620/heroku-deployer

all: build

build:
	docker build -t ${NAME} .

run:
	docker run -it --rm ${NAME} /bin/bash
