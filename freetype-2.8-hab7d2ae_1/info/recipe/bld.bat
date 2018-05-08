set CXXFLAGS=
set CFLAGS=

mkdir build
cd build

:: Configure.
cmake -G "%CMAKE_GENERATOR%" ^
      -D CMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX:/=\\%" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_PREFIX_PATH="%LIBRARY_PREFIX%:/=\\" ^
      -D CMAKE_SYSTEM_PREFIX_PATH="%LIBRARY_PREFIX:/=\\%" ^
      -D BUILD_SHARED_LIBS:BOOL=true ^
      "%SRC_DIR:/=\\%"
if errorlevel 1 exit 1

:: Build.
cmake --build . --config Release
if errorlevel 1 exit 1

:: Test.
ctest -C Release
if errorlevel 1 exit 1

:: Install.
cmake --build . --config Release --target install
if errorlevel 1 exit 1

:: Move everything 1-level down.
move %LIBRARY_INC%\freetype2\freetype %LIBRARY_INC% || exit 1
move %LIBRARY_INC%\freetype2\ft2build.h %LIBRARY_INC% || exit 1