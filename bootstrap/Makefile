
.PHONY: upload test

all: Dockerfile
	docker build -t rjmacready/opendylan-boostrap .

upload:
	docker push rjmacready/opendylan-boostrap

test:
	docker run -i -t rjmacready/opendylan-bootstrap /bin/bash

