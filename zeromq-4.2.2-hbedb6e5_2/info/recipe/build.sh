#!/bin/bash

if [[ ${HOST} =~ .*darwin.* ]]; then
  EXTRA_CMAKE_ARGS="-DZMQ_BUILD_FRAMEWORK=OFF"
else
  export LIBRARY_SEARCH_VAR=LD_LIBRARY_PATH
  # necessary because glibc <2.17
  export CXXFLAGS="$CXXFLAGS -lrt"
fi

mkdir build
cd build
cmake -G "$CMAKE_GENERATOR" \
      -DCMAKE_INSTALL_PREFIX=${PREFIX}  \
      -DWITH_PERF_TOOL=OFF              \
      -DZMQ_BUILD_TESTS=ON              \
      -DENABLE_CPACK=OFF                \
      -DCMAKE_BUILD_TYPE=Release        \
      -DCMAKE_INSTALL_LIBDIR=lib        \
      ${EXTRA_CMAKE_ARGS}               \
      ..

if [[ ${HOST} =~ .*darwin.* ]]; then
    cat << EOF > CTestCustom.cmake
set(CTEST_CUSTOM_TESTS_IGNORE
${CTEST_CUSTOM_TESTS_IGNORE}
test_system
test_shutdown_stress
)
EOF

else
    cat << EOF > CTestCustom.cmake
set(CTEST_CUSTOM_TESTS_IGNORE
${CTEST_CUSTOM_TESTS_IGNORE}
test_security_plain
test_security_curve
test_monitor
)
EOF
fi

cmake --build . --config Release -- -j${CPU_COUNT}
ctest -C Release
cmake --build . --config Release --target install

# Add missing symlink for libzmq.so.5 required for pyzmq
# https://github.com/conda-forge/zeromq-feedstock/issues/16
ln -f -s libzmq${SHLIB_EXT} $PREFIX/lib/libzmq${SHLIB_EXT}.5
