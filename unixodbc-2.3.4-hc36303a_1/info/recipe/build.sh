#!/bin/bash

set -e
set -x

./configure --prefix=${PREFIX}  \
            --sysconfdir=/etc
make -j${CPU_COUNT} ${VERBOSE_AT}
make install
