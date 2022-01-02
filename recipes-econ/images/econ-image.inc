IMAGE_FSTYPES = "container"
  
IMAGE_FEATURES = "" 
IMAGE_LINGUAS = "" 
  
inherit core-image
  
IMAGE_INSTALL = "packagegroup-core-boot os-release"
  
rootfs_fixup_var_volatile () {
        install -m 1777 -d ${IMAGE_ROOTFS}/${localstatedir}/volatile/tmp
}
  
ROOTFS_POSTPROCESS_COMMAND += "rootfs_fixup_var_volatile ; "
