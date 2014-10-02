
FROM rjmacready/opendylan-2013.2

ONBUILD mkdir -p /opt/git/opendylan \
	&& git clone https://github.com/dylan-lang/opendylan /opt/git/opendylan \
	&& cd /opt/git/opendylan \
	&& ./autogen.sh \
	&& ./configure --with-gc=boehm --with-gc-path=/usr/lib --prefix=/opt/opendylan-master \
	&& make 3-stage-bootstrap
