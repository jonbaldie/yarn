all: build test

build:
	docker build -t jonbaldie/yarn:latest .

test:
	docker run --rm jonbaldie/yarn [ -f /root/.yarn/bin/yarn ] && echo 'ok' | grep 'ok' 
