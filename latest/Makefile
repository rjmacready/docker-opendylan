
.PHONY: upload test all

all: Dockerfile
	docker build -t rjmacready/opendylan-latest .

upload:
	docker push rjmacready/opendylan-latest

test:
	docker run -i -t rjmacready/opendylan-latest /bin/bash

