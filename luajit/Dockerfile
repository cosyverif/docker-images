FROM alpine:edge
MAINTAINER Alban Linard <alban@linard.fr>
# MAINTAINER Evan Wies <evan@neomantra.net>

RUN \
    apk add --no-cache --virtual .build-deps \
        build-base \
        curl \
        make \
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
    && hererocks --luajit=2.1 --luarocks=^ /usr \
    && luarocks install luasec \
    && apk del .build-deps
