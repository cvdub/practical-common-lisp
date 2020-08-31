(defpackage :net.cvdub.pathnames-system (:use :asdf :cl))
(in-package :net.cvdub.pathnames-system)

(defsystem pathnames
  :name "pathnames"
  :serial t
  :components ((:file "packages")
               (:file "pathnames")))
