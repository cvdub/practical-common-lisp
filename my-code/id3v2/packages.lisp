(defpackage :net.cvdub.id3v2
  (:use :common-lisp
        :net.cvdub.pathnames
        :net.cvdub.binary)
  (:export
   :read-id3
   :mp3-p
   :id3-p
   :album
   :composer
   :genre
   :encoding-program
   :artist
   :part-of-set
   :track
   :song
   :year
   :size
   :translated-genre))
