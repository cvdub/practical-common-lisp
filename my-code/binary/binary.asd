(defpackage :net.cvdub.binary-system (:use :asdf :cl))
(in-package :net.cvdub.binary-system)

(defsystem binary
  :name "binary"
  :serial t
  :components ((:file "packages")
               (:file "binary"))
  :depends-on (:macro-utilities))
