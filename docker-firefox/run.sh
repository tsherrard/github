#!/bin/sh

xhost +

sudo docker run -it --rm \
    --shm-size 4g \
    --device /dev/snd -e DISPLAY="${DISPLAY}" \
    -v /etc/asound.conf:/etc/asound.conf \
    -v /etc/machine-id:/etc/machine-id \
    -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
     ${1}
