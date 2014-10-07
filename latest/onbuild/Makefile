
.PHONY: upload test all

all: Dockerfile
	docker build -t rjmacready/opendylan-latest-onbuild .
	docker tag rjmacready/opendylan-latest-onbuild rjmacready/opendylan:latest-onbuild

upload:
	docker push rjmacready/opendylan-latest-onbuild

test:
	docker run -i -t rjmacready/opendylan-latest-onbuild /bin/bash
