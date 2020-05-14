(in-package :cl-user)

(defpackage :net.cvdub.pathnames
  (:use :common-lisp)
  (:export
   :list-directory
   :file-exists-p
   :directory-pathname-p
   :file-pathname-p
   :pathname-as-directory
   :pathname-as-file
   :walk-directory
   :directory-p
   :file-p))

(defpackage :net.cvdub.spam
  (:use :common-lisp :net.cvdub.pathnames))
