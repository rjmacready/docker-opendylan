
FROM rjmacready/opendylan-2013.2

ONBUILD RUN mkdir -p /usr/src/opendylan

ONBUILD WORKDIR /usr/src/opendylan

ONBUILD RUN git clone https://github.com/dylan-lang/opendylan . \
	&& ./autogen.sh \
	&& ./configure --with-gc=boehm --with-gc-path=/usr/lib --prefix=/opt/opendylan-master \
	&& git submodule update --init --recursive \
	&& make 3-stage-bootstrap \
	&& make install \
	&& rm -rf /usr/src/opendylan \
	&& rm -rf /opt/opendylan-2013.2

ONBUILD WORKDIR /

ONBUILD ENV PATH /opt/opendylan-master/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
