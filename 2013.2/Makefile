
.PHONY: upload test all

all: Dockerfile
	docker build -t rjmacready/opendylan-2013.2 .
	docker tag rjmacready/opendylan-2013.2 rjmacready/opendylan:2013.2

upload:
	docker push rjmacready/opendylan-2013.2

test:
	docker run -i -t rjmacready/opendylan-2013.2 /bin/bash

