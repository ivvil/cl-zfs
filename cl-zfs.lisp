;;;; cl-zfs.lisp

(in-package #:cl-zfs)

(define-condition zfs-error (error) ()
  (:report (lambda (condition stream)
			 (declare (ignore condition))
			 (format stream "Libzfs error"))))

(define-condition zfs-init-error (zfs-error) ()
  (:report (lambda (condition stream)
			 (declare (ignore condition))
			 (format stream "libzfs initalization error. Check kernel module and /dev/zfs"))))

(define-condition zfs-open-error (zfs-error)
  ((obj-type
	:initarg :obj-type
	:reader obj-type
	:type string)
   (obj
	:initarg :obj
	:reader obj
	:type string))
  (:report (lambda (condition stream)
			 (format stream "zfs_open failed for ~a ~a" (obj-type condition) (obj condition)))))

(defun list-datasets (pool &key (type :filesystem))
  (let* ((names '())
		 (+dataset-names+ '())
		 (hdl (c:libzfs-init)))
	(when (cffi:null-pointer-p hdl)
	  (error 'zfs-init-error))
	(unwind-protect
		 (let ((root (c:zfs-open hdl pool type)))
		   (when (cffi:null-pointer-p root)
			 (error 'zfs-open-error :obj-type "pool" :obj pool))
		   (unwind-protect
				(progn
				  (c:zfs-iter-filesystems root (cffi:callback c:collect-name)
										  (cffi:null-pointer))
				  (setf names (nreverse +dataset-names+))))
		   (c:zfs-close root)))))
