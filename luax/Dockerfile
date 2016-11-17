FROM alpine:edge
MAINTAINER Alban Linard <alban@linard.fr>
# MAINTAINER Evan Wies <evan@neomantra.net>

ADD luax/install    /lua/
ADD luax/versions   /lua/
ADD luax/*.rockspec /lua/

RUN \
    apk add --no-cache --virtual .build-deps \
        build-base \
        make \
        ncurses-dev \
        openssl-dev \
        parallel \
        perl-dev \
        readline-dev \
        zlib-dev \
        py2-pip \
    && apk add --no-cache \
        bash \
        curl \
        git \
        libgcc \
        ncurses \
        openssl \
        perl \
        readline \
        unzip \
        zip \
        zlib \
    && pip install hererocks \
    && cd /lua \
    && chmod a+x install \
    && parallel -a versions ./install \
    && cd / \
    && chown -R root.users /lua \
    && apk del .build-deps \
    && rm -f /lua/install /lua/versions /lua/*.rockspec
