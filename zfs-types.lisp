(in-package #:cl-zfs/c-lib)

(pkg-config-cflags "libzfs_core")

(include "libzfs/libzfs.h")
(include "libzfs/libzfs_core.h")

(cenum zfs-type
	   ((:invalid		"ZFS_TYPE_INVALID"))
	   ((:filesystem	"ZFS_TYPE_FILESYSTEM"))
	   ((:snapshot		"ZFS_TYPE_SNAPSHOT"))
	   ((:volume		"ZFS_TYPE_VOLUME"))
	   ((:pool			"ZFS_TYPE_POOL"))
	   ((:bookmark		"ZFS_TYPE_BOOKMARK"))
	   ((:vdev			"ZFS_TYPE_VDEV")))




