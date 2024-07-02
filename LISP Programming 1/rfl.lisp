; rfl function:

(defun rfl (lst)
  (cond ((<= (length lst) 2) lst)
        (t (let ((mid (cdr (butlast lst)))
                 (last (last lst)))
             (format nil "(~{~a ~})" mid last)))))

; test cases:

(print (rfl '(1 2 3 4 5)))
(print (rfl '(1 2)))
(print (rfl '(1 2 3)))