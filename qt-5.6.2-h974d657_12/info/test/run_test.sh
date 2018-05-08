#!/bin/bash

cd test
ln -s ${GXX} g++
export PATH=${PWD}:${PATH}
qmake hello.pro
make
./hello


set -ex



conda inspect linkages -p $PREFIX qt
test -f $PREFIX/lib/libQt5WebKit.so
test -f $PREFIX/plugins/sqldrivers/libqsqlite${SHLIB_EXT}
exit 0
