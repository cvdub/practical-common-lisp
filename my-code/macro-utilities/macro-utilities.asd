(defpackage :net.cvdub.macro-utilities-system (:use :asdf :cl))
(in-package :net.cvdub.macro-utilities-system)

(defsystem macro-utilities
  :name "macro-utilities"
  :components
  ((:file "packages")
   (:file "macro-utilities" :depends-on ("packages")))
  :depends-on ())

        
