#!/usr/bin/env bash
set -ex

autoreconf -i
./configure \
  --prefix="${PREFIX}" \
  --with-libpng="${PREFIX}" \
  --with-zlib="${PREFIX}"

make -j ${CPU_COUNT}
make check
make install
