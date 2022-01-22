FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://nginx.init"

PACKAGECONFIG_append = " http2"

do_install_append() {
	echo "======= ${PN}-${PV} INSTALLING nginx init file ========"
	install -m 0755 ${WORKDIR}/nginx.init ${D}${sysconfdir}/init.d/nginx
}
