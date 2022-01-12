SUMMARY = "A nginx container image"
LICENSE = "MIT"

require econ-image.inc

IMAGE_INSTALL += "nginx"

# Add /var/log/nginx
ROOTFS_POSTPROCESS_COMMAND += "rootfs_add_nginx_dirs ; "

rootfs_add_nginx_dirs () {
	install -m 755 -d ${IMAGE_ROOTFS}/${localstatedir}/log/nginx
}

export IMAGE_BASENAME = "${DISTRO}-nginx-${DATE}"
include common.inc
