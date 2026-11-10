(in-package #:cl-zfs/c-lib)

(define-foreign-library libzfs
  (:unix (:default "libzfs"))
  (t (:default "libzfs")))

(define-foreign-library libzfs-core
  (:unix (:default "libzfs_core"))
  (t (:default "libzfs_core")))

(use-foreign-library libzfs)
(use-foreign-library libzfs-core)

(defctype libzfs-handle :pointer)
(defctype zfs-handle	:pointer)
(defctype zpool-handle	:pointer)

(defcfun "libzfs_init" libzfs-handle)
(defcfun "libzfs_fini" :void
  (handle libzfs-handle))

(defcfun "zfs_open" zfs-handle
  (handle libzfs-handle)
  (path :string)
  (types zfs-type))

(defcfun "zfs_close" :void
  (handle zfs-handle))

(defcfun "zfs_get_name" :string
  (handle zfs-handle))

(defcfun "zfs_get_type" zfs-type
  (handle zfs-handle))

(defcfun "zfs_iter_filesystems" :int
  (handle zfs-handle)
  (func :pointer)
  (data :pointer))

(defcfun "zpool_iter" :int
  (handle libzfs-handle)
  (func :pointer)    ;; zpool_iter_f? 
  (data :pointer))

(defcfun "zpool_get_name" :string
  (handle zpool-handle))

(defcfun "zpool_close" :void
  (handle zpool-handle))

;;; HACK Uses *dataset-names* to push values
(defcallback collect-name :int
	((handle zfs-handle)
	 (data :pointer))
  (declare (ignore data))
  (push (zfs-get-name handle) +dataset-names+)
  0)


