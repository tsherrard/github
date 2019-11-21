FROM alpine:latest

RUN apk update &&\
    apk upgrade &&\
    adduser -S -u 9999 firefox &&\
    adduser firefox audio &&\
    apk add --no-cache \
        faenza-icon-theme ttf-dejavu ffmpeg-libs adwaita-icon-theme\
        ca-certificates hicolor-icon-theme firefox-esr x264-libs &&\
    chown -R 9999:root /home/firefox

USER "firefox"

ENTRYPOINT "/usr/bin/firefox"
