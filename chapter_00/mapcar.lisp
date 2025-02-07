(setf n1 `(Mr Ankit Hooda))
(setf n2 `(Reverend Jack Doe))
(setf n3 `(General John Hancock))
(setf names (list n1 n2 n3))

(defparameter *titles*
  `(Mr Mrs Miss Admiral General)
  "Commonly used titles"
  )

(defun lastname (name)
  "Get last name from names"
  (first (rest name)))

(defun firstname (name)
  (if (member (first name) *titles*)
      (firstname (rest name))
      (first name)))

(mapcar #'lastname names)

(mapcar #'first names)

(mapcar #'firstname names)
