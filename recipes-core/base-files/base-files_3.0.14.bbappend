FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI_append = "file://fstab"

do_install_append() {
	echo "======= ${PN}-${PV} INSTALLING fstab ========"
	install -m 644 ${WORKDIR}/fstab ${D}${sysconfdir}
}
