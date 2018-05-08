

set -ex



test -f ${PREFIX}/include/mpc.h
test -f ${PREFIX}/lib/libmpc.a
test -f ${PREFIX}/lib/libmpc.so
exit 0
