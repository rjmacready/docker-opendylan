
COMPILERS=2013.2 latest

EXTRA=onbuild

.PHONY: all upload

all: ; $(foreach dir,$(COMPILERS),(cd $(dir) && make && $(foreach extra,$(EXTRA),(cd $(extra) && make))) &&):
	docker push rjmacready/opendylan

upload: all; $(foreach dir,$(COMPILERS),(cd $(dir) && make upload && $(foreach extra,$(EXTRA),(cd $(extra) && make upload))) &&):

