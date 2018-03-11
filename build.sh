#!/bin/bash
./configure --prefix=/usr/local \
            --backend=sdl \
            --enable-release \
            --enable-c++11 \
            --opengl-mode=none \
            --disable-sdlnet && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install
