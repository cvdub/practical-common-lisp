(defpackage :net.cvdub.id3v2-system (:use :asdf :cl))
(in-package :net.cvdub.id3v2-system)

(defsystem id3v2
  :name "id3"
  :components ((:file "packages")
               (:file "id3v2" :depends-on ("packages")))
  :depends-on (:binary :pathnames))
