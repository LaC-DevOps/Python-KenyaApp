#!/bin/bash
docker pull airist/apps:kenye-quotes

docker run -u=$(id -u $USER):$(id -g $USER) -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v $(pwd)/src:/app --rm airist/apps:kenye-quotes