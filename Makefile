
.PHONY: upload test

all: Dockerfile
	docker build -t rjmacready/opendylan-2013.2 .

upload:
	docker push rjmacready/opendylan-2013.2

test:
	docker run -i -t rjmacready/opendylan-2013.2 /bin/bash

