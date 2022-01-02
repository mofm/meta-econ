SUMMARY = "A minimal container image"
LICENSE = "MIT"

require econ-image.inc

export IMAGE_BASENAME = "${DISTRO}-core-${DATE}"
inherit econ-common
