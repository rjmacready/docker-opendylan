
FROM debian:wheezy

RUN apt-get update && apt-get install -y autoconf automake bzip2 gcc git libgc-dev make wget

WORKDIR /opt

RUN wget http://opendylan.org/downloads/opendylan/2013.2/opendylan-2013.2-x86_64-linux.tar.bz2 \
    && tar xvjf "opendylan-2013.2-x86_64-linux.tar.bz2" \
    && rm "opendylan-2013.2-x86_64-linux.tar.bz2"

ENV PATH /opt/opendylan-2013.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
