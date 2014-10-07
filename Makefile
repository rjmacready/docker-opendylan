
COMPILERS=2013.2 latest

EXTRA=onbuild

.PHONY: all upload

all: ; $(foreach dir,$(COMPILERS),(cd $(dir) && make && $(foreach extra,$(EXTRA),(cd $(extra) && make))) &&):

upload: all; $(foreach dir,$(COMPILERS),(cd $(dir) && make upload && $(foreach extra,$(EXTRA),(cd $(extra) && make upload))) &&):
	docker push rjmacready/opendylan
