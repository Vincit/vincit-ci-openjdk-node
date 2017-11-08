NAME = vincit/vincit-ci-openjdk-node
VERSION = 8-jdk

.PHONY: all build push

build:
	docker build --no-cache -t $(NAME):$(VERSION) .
	docker tag $(NAME):$(VERSION) $(NAME):latest

push: build
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest

all: build
