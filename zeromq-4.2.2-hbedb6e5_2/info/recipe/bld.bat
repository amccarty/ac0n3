:: This recipe is broken right now.  It's not necessary, because pyzmq bundles its own zeromq.
::    We're punting on this, but for whoever picks this up, this recipe is having trouble finding stdint.h

mkdir build
cd build

:: Crappy hack because I can't seem to change the includes folders to pick up stdint in LIBRARY_INC
COPY "%LIBRARY_INC%\stdint.h" ..\src\stdint.h
COPY "%LIBRARY_INC%\inttypes.h" ..\src\inttypes.h

cmake -G "%CMAKE_GENERATOR%" ^
      -D ENABLE_DRAFTS=OFF ^
      -D WITH_PERF_TOOL=OFF ^
      -D ZMQ_BUILD_TESTS=ON ^
      -D ENABLE_CPACK=OFF ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      ..

(
echo set(CTEST_CUSTOM_TESTS_IGNORE
echo    ${CTEST_CUSTOM_TESTS_IGNORE}
echo    test_hwm
echo    test_hwm_pubsub
echo    test_xpub_nodrop
echo    test_sockopt_hwm
echo    )
) > CTestCustom.cmake

cmake --build . --config Release
cmake --build . --config Release --target install
ctest -C Release

copy /y %LIBRARY_BIN%\libzmq-mt-4*.dll %LIBRARY_BIN%\libzmq.dll
if errorlevel 1 exit 1
copy /y %LIBRARY_LIB%\libzmq-mt-4*.lib %LIBRARY_BIN%\libzmq.lib
if errorlevel 1 exit 1
