;;;; package.lisp

(defpackage #:cl-zfs
  (:use #:cl)
  (:local-nicknames (:c :cl-zfs/c-lib)))

(defpackage #:cl-zfs/c-lib
  (:use #:cl #:cffi)
  (:export :zfs-type

		   :libzfs-handle
		   :zfs-handle
		   :zpool-handle

		   :libzfs-init
		   :libzfs-fini

		   :zfs-open
		   :zfs-close
		   :zfs-get-name
		   :zfs-get-type
		   :zfs-iter-filesystems

		   :zpool-iter
		   :zpool-get-name
		   :zpool-close

		   :collect-name))
