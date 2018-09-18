(define (compose f g)
  (lambda (x)
    (f (g x)))) ;ex1.42

(define (repeated f n)
  (if (= n 1)
	(lambda (x)
	  (f x))
	  (compose f (repeated f (- n 1)))));ex1.43
	 

((repeated square 2) 5)
      