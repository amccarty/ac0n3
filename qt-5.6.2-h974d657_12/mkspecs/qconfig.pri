#configuration
CONFIG +=  shared qpa no_mocdepend release qt_no_framework
host_build {
    QT_ARCH = x86_64
    QT_TARGET_ARCH = x86_64
} else {
    QT_ARCH = x86_64
    QMAKE_DEFAULT_LIBDIRS = /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/sysroot/lib /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/sysroot/usr/lib /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/lib /opt/anaconda1anaconda2anaconda3/lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0 /opt/anaconda1anaconda2anaconda3/lib/gcc
    QMAKE_DEFAULT_INCDIRS = /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/include/c++/7.2.0 /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/include/c++/7.2.0/x86_64-conda_cos6-linux-gnu /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/include/c++/7.2.0/backward /opt/anaconda1anaconda2anaconda3/lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/include /opt/anaconda1anaconda2anaconda3/lib/gcc/x86_64-conda_cos6-linux-gnu/7.2.0/include-fixed /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/include /opt/anaconda1anaconda2anaconda3/x86_64-conda_cos6-linux-gnu/sysroot/usr/include
}
QT_CONFIG +=  minimal-config small-config medium-config large-config full-config fontconfig evdev xlib xrender xcb-plugin xcb-qt xcb-glx xcb-xlib xkbcommon-qt accessibility-atspi-bridge c++11 c++14 c++1z accessibility opengl shared qpa reduce_exports reduce_relocations clock-gettime clock-monotonic posix_fallocate mremap getaddrinfo ipv6ifname getifaddrs inotify eventfd threadsafe-cloexec system-jpeg system-png png system-freetype harfbuzz system-zlib iconv glib dbus dbus-linked openssl xcb rpath alsa gstreamer-1.0 icu concurrent audio-backend release

#versioning
QT_VERSION = 5.6.2
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 6
QT_PATCH_VERSION = 2

#namespaces
QT_LIBINFIX = 
QT_NAMESPACE = 

QT_EDITION = OpenSource

QT_COMPILER_STDCXX = 201402
QT_GCC_MAJOR_VERSION = 7
QT_GCC_MINOR_VERSION = 2
QT_GCC_PATCH_VERSION = 0
