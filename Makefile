
.PHONY: upload test

all: Dockerfile
	docker build -t rjmacready/opendylan .

upload:
	docker push rjmacready/opendylan

test:
	docker run -i -t rjmacready/opendylan /bin/bash

