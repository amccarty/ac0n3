${CC} -L$PREFIX/lib -I$PREFIX/include -lmpfr -lgmp -Wl,-rpath,$PREFIX/lib $RECIPE_DIR/test.c -o test_exe
./test_exe


set -ex



test -f ${PREFIX}/lib/libmpfr.a
test -f ${PREFIX}/lib/libmpfr.so
exit 0
