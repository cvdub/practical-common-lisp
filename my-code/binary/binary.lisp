(in-package :net.cvdub.binary)

(defun as-keyword (sym)
  (intern (string sym)
          :keyword))

(defun slot->defclass-slot (spec)
  (let ((name (first spec)))
    `(,name
      :initarg ,(as-keyword name):accessor,name)))

(defgeneric read-value
  (type stream &key)
  (:documentation "Read a value of the given type from the stream."))

(defun slot->read-value (spec stream)
  (destructuring-bind (name (type &rest args)) (normalize-slot-spec spec)
    `(setf ,name (read-value ',type ,stream ,@args))))

(defun normalize-slot-spec (spec)
  (list (first spec)
        (mklist (second spec))))

(defun mklist (x)
  (if (listp x)
      x
      (list x)))

(defmacro define-binary-class (name slots)
  (with-gensyms (typevar objectvar streamvar)
    `(progn
       (defclass ,name ()
         ,(mapcar #'slot->defclass-slot slots))

       (defmethod read-value ((,typevar (eql ',name)) ,streamvar &key)
         (let ((,objectvar (make-instance ',name)))
           (with-slots ,(mapcar #'first slots) ,objectvar
             ,@(mapcar #'(lambda (x) (slot->read-value x streamvar)) slots))
           ,objectvar)))))

(macroexpand-1 '(define-binary-class id3-tag
                  ((identifier (iso-8859-1-string :length 3))
                   (major-version u1)
                   (revision u1)
                   (flags u1)
                   (size id3-tag-size)
                   (frames (id3-frames :tag-size size)))))
