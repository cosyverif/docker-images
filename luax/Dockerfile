FROM alpine:edge
MAINTAINER Alban Linard <alban@linard.fr>
# MAINTAINER Evan Wies <evan@neomantra.net>

ADD install    /lua/
ADD *.rockspec /lua/

RUN \
    apk add --no-cache --virtual .build-deps \
        build-base \
        curl \
        make \
        ncurses-dev \
        openssl-dev \
        perl-dev \
        readline-dev \
        zlib-dev \
        py2-pip \
    && apk add --no-cache \
        git \
        libgcc \
        openssl \
        unzip \
        zlib \
    && pip install hererocks \
    && cd /lua \
    && chmod a+x install \
    && ./install \
    && cd / \
    && apk del .build-deps \
    && rm -f /lua/install /lua/*.rockspec
