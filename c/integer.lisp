(in-package #:cl-zfs.c)

(defun integer-type-bounds (type)
  (ecase type
    (:byte   (values 0 (1- (expt 2 8))))
    (:uint8  (values 0 (1- (expt 2 8))))
    (:int8   (values (- (expt 2 7)) (1- (expt 2 7))))
    (:uint16 (values 0 (1- (expt 2 16))))
    (:int16  (values (- (expt 2 15)) (1- (expt 2 15))))
    (:uint32 (values 0 (1- (expt 2 32))))
    (:int32  (values (- (expt 2 31)) (1- (expt 2 31))))
    (:uint64 (values 0 (1- (expt 2 64))))
    (:int64  (values (- (expt 2 63)) (1- (expt 2 63))))))









