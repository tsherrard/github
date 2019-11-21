FROM alpine:latest

ENV APORTSURL="git://git.alpinelinux.org/aports"
ENV BUILDDIR="/tmp/aports"

WORKDIR /tmp

RUN apk add --no-cache apk-tools alpine-conf git syslinux rsync grub-efi &&\
    adduser -S -u 9999 build &&\
    git clone ${APORTSURL} &&\
    chown -R 9999:root ${BUILDDIR}
 
USER build
WORKDIR ${BUILDDIR}

ENTRYPOINT /bin/sh
