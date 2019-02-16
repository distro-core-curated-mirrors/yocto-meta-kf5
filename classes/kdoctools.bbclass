# Class for recipes using kdoctools to build their documentation

do_compile_prepend() {
    # meinproc5 needs to find installed service type files
    export XDG_DATA_DIRS=${STAGING_DATADIR}:$XDG_DATA_DIRS
}

DEPENDS += " \
    kdoctools \
    kdoctools-native \
    libxslt-native \
    karchive-native \
"

EXTRA_OECMAKE += " -DKF5_HOST_TOOLING=${STAGING_DIR_NATIVE}/${libdir}/cmake"
