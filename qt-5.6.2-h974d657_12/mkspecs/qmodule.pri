CONFIG +=  compile_examples system-sqlite qpa largefile precompile_header use_gold_linker enable_new_dtags sse2 sse3 ssse3 sse4_1 sse4_2 pcre
QT_BUILD_PARTS += libs tools
QT_SKIP_MODULES +=  qtenginio qtlocation qtsensors qtserialport qtserialbus qtquickcontrols2 qtwayland qtcanvas3d qt3d qtwebengine
QT_NO_DEFINES =  CUPS EGL EGLFS EGL_X11 IMAGEFORMAT_JPEG LIBPROXY OPENVG PULSEAUDIO STYLE_GTK TSLIB ZLIB
QT_QCONFIG_PATH = 
host_build {
    QT_CPU_FEATURES.x86_64 =  mmx sse sse2
} else {
    QT_CPU_FEATURES.x86_64 =  mmx sse sse2
}
QT_COORD_TYPE = double
QT_CFLAGS_SQLITE   = -I/opt/anaconda1anaconda2anaconda3/include
QT_LFLAGS_SQLITE   = -L/opt/anaconda1anaconda2anaconda3/lib -lsqlite3
QT_LFLAGS_ODBC   = -lodbc
QMAKE_AR = /opt/anaconda1anaconda2anaconda3/bin/x86_64-conda_cos6-linux-gnu-ar cqs
QMAKE_RANLIB = /opt/anaconda1anaconda2anaconda3/bin/x86_64-conda_cos6-linux-gnu-ranlib
QMAKE_STRIP = /opt/anaconda1anaconda2anaconda3/bin/x86_64-conda_cos6-linux-gnu-strip
QMAKE_OBJDUMP = /opt/anaconda1anaconda2anaconda3/bin/x86_64-conda_cos6-linux-gnu-objdump
QMAKE_LINK = /opt/anaconda1anaconda2anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++
QMAKE_CC = /opt/anaconda1anaconda2anaconda3/bin/x86_64-conda_cos6-linux-gnu-gcc
QMAKE_CXX = /opt/anaconda1anaconda2anaconda3/bin/x86_64-conda_cos6-linux-gnu-g++
styles += mac fusion windows
DEFINES += QT_NO_MTDEV
QT_LIBS_DBUS = -L/opt/anaconda1anaconda2anaconda3/lib -ldbus-1
QT_CFLAGS_DBUS = -I/opt/anaconda1anaconda2anaconda3/include/dbus-1.0 -I/opt/anaconda1anaconda2anaconda3/lib/dbus-1.0/include
QT_HOST_CFLAGS_DBUS = -I/opt/anaconda1anaconda2anaconda3/include/dbus-1.0 -I/opt/anaconda1anaconda2anaconda3/lib/dbus-1.0/include
QT_CFLAGS_GLIB = -pthread -I/opt/anaconda1anaconda2anaconda3/include/glib-2.0 -I/opt/anaconda1anaconda2anaconda3/lib/glib-2.0/include -I/opt/anaconda1anaconda2anaconda3/include
QT_LIBS_GLIB = -L/opt/anaconda1anaconda2anaconda3/lib -lgthread-2.0 -pthread -lrt -lglib-2.0
QMAKE_CFLAGS_FONTCONFIG = -I/opt/anaconda1anaconda2anaconda3/include -I/opt/anaconda1anaconda2anaconda3/include/freetype2 -I/opt/anaconda1anaconda2anaconda3/include/libxml2 -I/opt/anaconda1anaconda2anaconda3/include -I/opt/anaconda1anaconda2anaconda3/include/libxml2 -I/opt/anaconda1anaconda2anaconda3/include -I/opt/anaconda1anaconda2anaconda3/include/freetype2
QMAKE_LIBS_FONTCONFIG = -L/opt/anaconda1anaconda2anaconda3/lib -lfontconfig -lfreetype
DEFINES += QT_NO_LIBUDEV
DEFINES += QT_NO_TSLIB
DEFINES += QT_NO_LIBINPUT
QMAKE_X11_PREFIX = 
QMAKE_XKB_CONFIG_ROOT = /opt/anaconda1anaconda2anaconda3/lib
QMAKE_CFLAGS_XCB = -I/opt/anaconda1anaconda2anaconda3/include 
QMAKE_LIBS_XCB = -L/opt/anaconda1anaconda2anaconda3/lib -lxcb
EXTRA_DEFINES +=  "_X_INLINE=inline" "XK_dead_currency=0xfe6f" "_FORTIFY_SOURCE=2" "XK_ISO_Level5_Lock=0xfe13" "FC_WEIGHT_EXTRABLACK=215" "FC_WEIGHT_ULTRABLACK=FC_WEIGHT_EXTRABLACK" "GLX_GLXEXT_PROTOTYPES"
EXTRA_INCLUDEPATH +=  "/opt/anaconda1anaconda2anaconda3/include" "/opt/anaconda1anaconda2anaconda3/bin/../lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/../../../../x86_64-conda_cos6-linux-gnu/include/c++/7.2.0" "/opt/anaconda1anaconda2anaconda3/bin/../lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/../../../../x86_64-conda_cos6-linux-gnu/include/c++/7.2.0/x86_64-conda_cos6-linux-gnu" "/opt/anaconda1anaconda2anaconda3/bin/../lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/../../../../x86_64-conda_cos6-linux-gnu/include/c++/7.2.0/backward" "/opt/anaconda1anaconda2anaconda3/bin/../lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/include" "/opt/anaconda1anaconda2anaconda3/bin/../lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/include-fixed" "/opt/anaconda1anaconda2anaconda3/bin/../lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/../../../../x86_64-conda_cos6-linux-gnu/include" "/opt/anaconda1anaconda2anaconda3/bin/../x86_64-conda_cos6-linux-gnu/sysroot/usr/include"
EXTRA_LIBS +=  -L"/opt/anaconda1anaconda2anaconda3/lib"
QMAKE_CFLAGS_WARN_ON +=  "-Wno-expansion-to-defined"
QMAKE_CXXFLAGS_WARN_ON +=  "-Wno-expansion-to-defined"
sql-drivers = 
sql-plugins =  sqlite
