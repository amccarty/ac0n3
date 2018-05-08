#!/bin/bash

if [[ ${HOST} =~ .*darwin.* ]]; then
  # TODO :: Fix this libtool cross-compilation bug
  export CC=$(dirname $(which ${CC}))/clang
  export CXX=$(dirname $(which ${CXX}))/clang++
fi

./configure --prefix="${PREFIX}"  \
            --enable-utf          \
            --enable-unicode-properties
make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install

# Delete man pages.
rm -rf "${PREFIX}/share"
