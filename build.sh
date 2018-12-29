#!/bin/bash

# apt-get install -y build-essential libexif-dev \
# libjpeg-dev libid3tag0-dev libflac-dev libvorbis-dev \
# libsqlite3-dev libavformat-dev autoconf automake autopoint


patch -p1 < minidlna-1.2.1.patch

mkdir build
cd minidlna-1.2.1 && ./autogen.sh && ./configure --prefix=/usr && make && make install DESTDIR=../build

