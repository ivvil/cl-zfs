;;;; cl-zfs.asd

(asdf:defsystem #:cl-zfs
  :description "Wrapper for libzfs"
  :author "Iván Villagrasa <ivvil412@gmail.com>"
  :license  "GPL-3.0-or-later"
  :version "0.0.1"
  :defsystem-depends-on (:cffi-grovel)
  :depends-on (:cffi :cffi-toolchain)
  :serial t
  :components ((:file "package")
			   (:cffi-grovel-file "zfs-types")
			   (:file "zfs-funs")
               (:file "cl-zfs")))
