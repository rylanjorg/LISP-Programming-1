; fibonacci recursive function:

(defun fib (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fib (- n 1)) (fib (- n 2))))))


; get user input and return answer:

(princ "Enter a number n to compute Fibonacci(n): ")
(let ((n (read)))
	(format t "Fibonacci(~a) = ~a~%" n (fib n)))