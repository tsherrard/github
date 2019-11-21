FROM alpine:latest

RUN apk update && apk upgrade &&\
    adduser -S -u 9999 chrome &&\
    adduser chrome audio &&\
    apk add --no-cache faenza-icon-theme ttf-dejavu ffmpeg-libs \
    adwaita-icon-theme ca-certificates hicolor-icon-theme chromium x264-libs &&\
    chown -R 9999:root /home/chrome/ 

USER chrome

ENTRYPOINT chromium-browser
