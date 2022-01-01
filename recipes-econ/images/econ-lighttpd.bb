SUMMARY = "A lighttpd container image"
LICENSE = "MIT"

require econ-core-image.bb

IMAGE_INSTALL += " \
	lighttpd \
	lighttpd-module-access \
	lighttpd-module-accesslog \
"

export IMAGE_BASENAME = "${DISTRO}-lighttpd-${DATE}"
