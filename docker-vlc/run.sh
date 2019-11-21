#!/bin/sh

# Disable X ACL. 
#   probably not the best idea but if you're still allowing others access to X, 
#   you have bigger problems
xhost +

docker run -it --rm \
    --shm-size 4g \
    --device /dev/snd -e DISPLAY="${DISPLAY}" \
    -v /etc/asound.conf:/etc/asound.conf:ro \
    -v /etc/machine-id:/etc/machine-id:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    ${1}
