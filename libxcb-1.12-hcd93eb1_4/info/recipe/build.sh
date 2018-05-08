#! /bin/bash

set -e
IFS=$' \t\n' # workaround for conda 4.2.13+toolchain bug

# Adopt a Unix-friendly path if we're on Windows (see bld.bat).
[ -n "$PATH_OVERRIDE" ] && export PATH="$PATH_OVERRIDE"

# On Windows we want $LIBRARY_PREFIX in both "mixed" (C:/Conda/...) and Unix
# (/c/Conda) forms, but Unix form is often "/" which can cause problems.
if [ -n "$LIBRARY_PREFIX_M" ] ; then
    mprefix="$LIBRARY_PREFIX_M"
    if [ "$LIBRARY_PREFIX_U" = / ] ; then
        uprefix=""
    else
        uprefix="$LIBRARY_PREFIX_U"
    fi
else
    mprefix="$PREFIX"
    uprefix="$PREFIX"
fi

# On Windows we need to regenerate the configure scripts.
if [ -n "$VS_MAJOR" ] ; then
    am_version=1.15 # keep sync'ed with meta.yaml
    export ACLOCAL=aclocal-$am_version
    export AUTOMAKE=automake-$am_version
    autoreconf_args=(
        --force
        --install
        -I "$mprefix/share/aclocal"
        -I "$mprefix/mingw-w64/share/aclocal" # note: this is correct for win32 also!
    )
    autoreconf "${autoreconf_args[@]}"
fi

echo "#!/usr/bin/env bash"                                > ./pkg-config
echo "${PREFIX}/bin/pkg-config --define-prefix \"\$@\""  >> ./pkg-config
chmod +x ./pkg-config
export PKG_CONFIG=${PWD}/pkg-config
export PKG_CONFIG_PATH=$(${CC} -print-sysroot)/usr/share/pkgconfig:$(${CC} -print-sysroot)/usr/lib64/pkgconfig:$uprefix/lib/pkgconfig:$uprefix/share/pkgconfig
declare -a configure_args
configure_args+=(--prefix=$mprefix)
configure_args+=(--host=${HOST})
configure_args+=(--disable-dependency-tracking)
configure_args+=(--disable-selective-werror)
configure_args+=(--disable-silent-rules)

./configure "${configure_args[@]}"
make -j ${CPU_COUNT} ${VERBOSE_AT}
make install
make check

rm -rf $uprefix/share/man $uprefix/share/doc/${PKG_NAME#xorg-}

xcb_libs="
xcb
xcb-composite
xcb-damage
xcb-dpms
xcb-dri2
xcb-dri3
xcb-glx
xcb-present
xcb-randr
xcb-record
xcb-res
xcb-screensaver
xcb-shape
xcb-shm
xcb-sync
xcb-xf86dri
xcb-xfixes
xcb-xinerama
xcb-xkb
xcb-xtest
xcb-xv
xcb-xvmc
"

# Non-Windows: prefer dynamic libraries to static, and dump libtool helper files
if [ -z "VS_MAJOR" ] ; then
    for lib_ident in $xcb_libs ; do
        rm -f $uprefix/lib/lib${lib_ident}.la $uprefix/lib/lib${lib_ident}.a
    done
fi

# TODO :: Remove the commit that adds the pkg-config wrapper then use this as a testcase for getting pyldd integrated into conda-build to find problems.
nm ${PREFIX}/lib/libxcb.so.1.1.0 | grep memcpy
