
FROM rjmacready/opendylan-2013.2

RUN mkdir -p /usr/src/opendylan
WORKDIR /usr/src/opendylan

ONBUILD RUN git clone https://github.com/dylan-lang/opendylan .

ONBUILD RUN ./autogen.sh \
	&& ./configure --with-gc=boehm --with-gc-path=/usr/lib --prefix=/opt/opendylan-master \
	&& git submodule update --init --recursive \
	&& make 3-stage-bootstrap

ONBUILD RUN make install

ENV PATH /opt/opendylan-master/bin:$PATH
