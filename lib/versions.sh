# Split BASE_VERSION into individual parts

AFTER_EPOCH=${BASE_VERSION#*:}
UPSTREAM_VER=${AFTER_EPOCH%-*}
DEBIAN_REV=${AFTER_EPOCH##*-}
: "${OUR_REV:=$DEBIAN_REV}"
: "${DEB_ARCH:=$(dpkg --print-architecture)}"
