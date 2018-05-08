

set -ex



test -f $PREFIX/lib/libodbc.so.2.0.0
test -f $PREFIX/lib/libodbc.so
test -f $PREFIX/lib/libodbcinst.so.2.0.0
test -f $PREFIX/lib/libodbcinst.so
exit 0
