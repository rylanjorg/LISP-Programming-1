; ispal function:

(defun ispal (lst)
  (cond ((or (null lst) (null (cdr lst))) t)
        ((equal (car lst) (car (last lst)))
         (ispal (cdr (butlast lst))))
        (t nil)))

; test cases:

(print (ispal '(1 2 3 2 1)))
(print (ispal '(5 4 3 4)))
(print (ispal '(1 2 2 1)))
(print (ispal '(1 2)))
(print (ispal '(1)))