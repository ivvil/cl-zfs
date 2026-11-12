(defpackage #:cl-zfs.nvlist
  (:use #:cl)
  (:local-nicknames (:c :cl-zfs/c-lib)))

(defpackage #:cl-zfs.nvlist/c-lib
  (:use #:cl #:cffi)
  (:local-nicknames (:c :cl-zfs/c-lib)))
