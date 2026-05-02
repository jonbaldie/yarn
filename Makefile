all: build test

build:
	docker build -t jonbaldie/yarn:latest .

test:
	docker run --rm jonbaldie/yarn /root/.yarn/bin/yarn --version 
