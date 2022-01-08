FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://inittab"

do_install_append() {
	echo "======= ${PN}-${PV} INSTALLING inittab ========"
	install -m 644 ${WORKDIR}/inittab ${D}${sysconfdir}
}
