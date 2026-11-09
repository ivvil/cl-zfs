;;;; package.lisp

(defpackage #:cl-zfs
  (:use #:cl))

(defpackage #:cl-zfs/c-lib
  (:use #:cl #:cffi))
