
(in-package #:cl-zfs.nvlist)

(defun nvlist-add-number (nvlist key number &optional (type :uint64))
  (ecase type
	(:uchar		(nvlist-add-byte nvlist key number))
	(:int8		(nvlist-add-int8 nvlist key number))
	(:uint8		(nvlist-add-uint8 nvlist key number))
	(:int16		(nvlist-add-int16 nvlist key number))
	(:uint16	(nvlist-add-uint16 nvlist key number))
	(:int32		(nvlist-add-int32 nvlist key number))
	(:uint32	(nvlist-add-uint32 nvlist key number))
	(:int64		(nvlist-add-int64 nvlist key number))
	(:uint64	(nvlist-add-uint64 nvlist key number))))

(defun nvlist-from-plist (plist))

(defun append-to-nvlist (nvlist key value)
  (etypecase value
	(null (nvlist-add-null nvlist key))
	(boolean (nvlist-add-bool nvlist key value))
	(number (nvlist-add-number nvlist key value))
	(string (nvlist-add-string nvlist key value))
	(nvlist-handle (nvlist-add-nvlist nvlist key value))))
