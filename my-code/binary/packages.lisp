(in-package :cl-user)

(defpackage :net.cvdub.binary
  (:use :common-lisp :net.cvdub.macro-utilities)
  (:export
   :define-binary-class
   :define-tagged-binary-class
   :define-binary-type
   :read-value
   :write-value
   :*in-progress-objects*
   :parent-of-type
   :current-binary-object
   :+null+))
