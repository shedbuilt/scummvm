#!/bin/bash
./configure --prefix=/usr/local \
            --backend=sdl \
            --enable-release \
            --enable-c++11 \
            --opengl-mode=none \
            --disable-sdlnet && \
make -j $SHED_NUM_JOBS && \
make DESTDIR="$SHED_FAKE_ROOT" install
