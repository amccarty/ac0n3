

set -ex



test -f ${PREFIX}/lib/libzmq.a
test -f ${PREFIX}/lib/libzmq.so
test -f ${PREFIX}/lib/libzmq.so.5
test -f ${PREFIX}/share/cmake/ZeroMQ/ZeroMQConfig.cmake
test -f ${PREFIX}/share/cmake/ZeroMQ/ZeroMQConfigVersion.cmake
exit 0
