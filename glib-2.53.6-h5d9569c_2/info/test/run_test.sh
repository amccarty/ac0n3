

set -ex



test -f ${PREFIX}/lib/libglib-2.0.so
conda inspect linkages -p $PREFIX $PKG_NAME
exit 0
