#!/usr/bin/env bash
set -ex

cp -r ${BUILD_PREFIX}/share/libtool/build-aux/config.* .

autoreconf -i
./configure \
  --prefix="${PREFIX}" \
  --with-libpng="${PREFIX}"

make -j ${CPU_COUNT}
make check
make install
