FROM alpine:latest

RUN apk update && apk upgrade &&\
    adduser -S -u 9999 vlc &&\
    adduser vlc video &&\
    adduser vlc audio &&\
    apk add --no-cache ffmpeg-libs vlc vlc-qt

USER vlc

#ENTRYPOINT /bin/sh
ENTRYPOINT /usr/bin/vlc -A alsa --alsa-audio-device PCH
