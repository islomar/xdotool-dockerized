#!/bin/sh

docker run -e DISPLAY=$DISPLAY \
    -v $XAUTHORITY:/root/.Xauthority \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --privileged \
    islomar/xdotool:latest \
    "$@"