
.PHONY: upload test

all: Dockerfile
	docker build -t rjmacready/opendylan-2013.2-onbuild .

upload:
	docker push rjmacready/opendylan-2013.2-onbuild

test:
	docker run -i -t rjmacready/opendylan-2013.2-onbuild /bin/bash

