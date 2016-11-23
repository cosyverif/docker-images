FROM alpine:edge
MAINTAINER Alban Linard <alban@linard.fr>
# MAINTAINER Evan Wies <evan@neomantra.net>

RUN \
    apk add --no-cache --virtual .build-deps \
        build-base \
        make \
        openssl-dev \
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
        readline \
        unzip \
        zip \
        zlib \
    && pip install hererocks \
    && hererocks --luajit=2.1 --luarocks=^ --compat=5.2 /usr \
    && luarocks install luasec \
    && apk del .build-deps
