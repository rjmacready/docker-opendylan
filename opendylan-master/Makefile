
.PHONY: upload test

all: Dockerfile
	docker build -t rjmacready/opendylan-master .

upload:
	docker push rjmacready/opendylan-master

test:
	docker run -i -t rjmacready/opendylan-master /bin/bash

