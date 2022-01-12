FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://nginx.init"

do_install_append() {
	echo "======= ${PN}-${PV} INSTALLING nginx init file ========"
	install -m 0755 ${WORKDIR}/nginx.init ${D}${sysconfdir}/init.d/nginx
}
