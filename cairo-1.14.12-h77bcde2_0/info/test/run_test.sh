

set -ex



cairo-trace --help
test -f $PREFIX/lib/libcairo.a
test -f $PREFIX/lib/libcairo.so
test -f $PREFIX/lib/libcairo-gobject.a
test -f $PREFIX/lib/libcairo-gobject.so
test -f $PREFIX/lib/libcairo-script-interpreter.a
test -f $PREFIX/lib/libcairo-script-interpreter.so
conda inspect linkages -p $PREFIX cairo
exit 0
