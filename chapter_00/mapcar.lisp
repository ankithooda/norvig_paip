(defun lastname (name)
  "Get last name from names"
  (first (rest name)))

(setf n1 `(Ankit Hooda))
(setf n2 `(John Doe))
(setf n3 `(John Hancock))
(setf names (list n1 n2 n3))

(mapcar #'lastname names)
