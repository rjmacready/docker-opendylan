
FROM debian:wheezy

RUN apt-get update && apt-get install -y autoconf automake bzip2 gcc libgc-dev make wget

RUN wget http://opendylan.org/downloads/opendylan/2013.2/opendylan-2013.2-x86_64-linux.tar.bz2

RUN ls -l "opendylan-2013.2-x86_64-linux.tar.bz2" && tar xvjf "opendylan-2013.2-x86_64-linux.tar.bz2"

