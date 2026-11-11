;;; MAYBE split this into two packages so we don't :use #:cffi on #:cl-zfs/nvlist
(defpackage #:cl-zfs/nvlist
  (:use #:cl #:cffi)
  (:local-nicknames (:c :cl-zfs/c-lib)))
