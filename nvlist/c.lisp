(in-package #:cl-zfs/nvlist)

(defctype nvlist-handle :pointer)

;;; Allocation/freeing
(defcfun "nvlist_alloc" :int
  (slot nvlist-handle)
  (flags :int)
  (alloc :int))

(defcfun "nvlist-free" :void
  (nvlist nvlist-handle))

;;; Adding stuff to nvlists
(defcfun "nvlist_add_null" :int
  (nvlist nvlist-handle)
  (key :string))

(defcfun "nvlist_add_boolean_value" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :bool))

(defcfun "nvlist_add_string" :int
  (nvlit nvlist-handle)
  (key :string)
  (value :string))

(defcfun "nvlist_add_nvlist" :int
  (nvlist nvlist-handle)
  (key :string)
  (value nvlist-handle))

(defcfun "nvlist_add_byte" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :uchar))

(defcfun "nvlist_add_int8" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :int8))

(defcfun "nvlist_add_uint8" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :uint8))

(defcfun "nvlist_add_int16" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :int16))

(defcfun "nvlist_add_uint16" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :uint16))

(defcfun "nvlist_add_int32" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :int32))

(defcfun "nvlist_add_uint32" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :uint32))

(defcfun "nvlist_add_int64" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :int64))

(defcfun "nvlist_add_uint64" :int
  (nvlist nvlist-handle)
  (key :string)
  (value :uint64))












